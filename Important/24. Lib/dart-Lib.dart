import 'dart:io'; // basic
import 'package:dio/dio.dart';

main(List<String> args) async {
  var file = File('./README.md'); // dart path always in root path
  var content = file.readAsStringSync();
  print(content);

  // dio library test
  Dio dio = Dio();
  Response<String> response = await dio.get('https://www.dartlang.org');
  print(response.data);
}
