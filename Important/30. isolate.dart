import 'dart:async';
import 'dart:isolate';

// 1. define main thread
main(List<String> args) async {
  // 3. recall Port
  var receivePort = ReceivePort();
  await Isolate.spawn(echo, receivePort.sendPort);
  // 6. save the receive port
  var sendPort = await receivePort.first;
  // 7. send the message
  var msg = await sendReceive(sendPort, 'send1');
  print('received $msg');
  msg = await sendReceive(sendPort, 'send2');
  print('received $msg');
}

// 2. echo thread
echo(SendPort sendPort) async {
  // 4. recall Port
  var receivePort = ReceivePort();

  // 5. tell main thread enter port
  sendPort.send(receivePort.sendPort);

  // 8. cycle receive message
  await for (var msg in receivePort) {
    var data = msg[0];
    SendPort replyPort = msg[1];
    replyPort.send(data);
    if (data == 'send2') receivePort.close();
  }
}

Future sendReceive(SendPort sendPort, msg) {
  ReceivePort response = ReceivePort();
  sendPort.send([msg, response.sendPort]);
  return response.first;
}
