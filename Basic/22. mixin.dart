abstract class Phone {
  void startUp() {
    print('Start');
  }

  void shutdown() {
    print('Shutdown');
  }
}

abstract class System {
  void whichSystem();
}

class IOSPhone extends Phone with System {
  @override
  void whichSystem() {
    print('IOS system');
  }
}

class Line {
  void sendMsg() {
    print('line send!');
  }
}

class Messenger {
  void sendMsg() {
    print('messenger send!');
  }
}

class IPhone_PRO extends IOSPhone with Messenger, Line {}

void main(List<String> args) {
  var iphone = IPhone_PRO();
  iphone.startUp();
  iphone.whichSystem();
  iphone.sendMsg();
  iphone.shutdown();
}
