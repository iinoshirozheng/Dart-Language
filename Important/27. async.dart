import './24. Lib/dartLib.dart';

main(List<String> args) async {
  //async call -> to complex
  // Dio dio = Dio();
  // dio.get('https://www.google.com.tw/search?q=iphone14').then((response) {
  //   print(response.data);

  //   var search = response.data["iphone14"];
  //   dio
  //       .get('https://www.google.com.tw/search?q=iphone14')
  //       .then((response) => print(response.data));
  // });

  // await
  Dio dio = Dio();
  await dio.get('https://www.google.com.tw/search?q=iphone14');
  print(1);
  await dio.get('https://www.google.com.tw/search?q=iphone14 Pro');
  print(2);
  await dio.get('https://www.google.com.tw/search?q=iphone14 Pro Max');
  print(3);

  // Future function
  Future<String> getURL(String url) async {
    Response<String> response = await Dio().get(url);
    return response.data;
  }

  print(await getURL('https://www.google.com.tw/search?q=iphone14 Pro Max'));
}
