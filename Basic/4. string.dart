void main(List<String> args) {
  String a = 'aaaaa';
  String b = "bbbbb";

  var c = a + b;
  Object d = 'hello' ' 134 ' "1231";
  dynamic e = '''
              123
              432
              5435
              ''';
  // translate
  String f = 'aa \n bbb';
  String g = r'aa \n bbb'; // cancel translate

  // search
  f = 'hello Ray';
  f.contains('o R');
  f.startsWith('hell');
  f.endsWith('ay');
  print(f.indexOf('ello')); // first index

  // extract
  var h = f.substring(2, 4);
  print(h);
  f.split(' ');

  f.toUpperCase();
  f.toLowerCase();

  var i = '        aaa       bb      c';
  print(i);
  print(i.trim());
  print(''.isEmpty);

  i.replaceAll('a', 'A');

  // create string buffer
  var stringBuffer = StringBuffer();
  stringBuffer
    ..write("123")
    ..write("456")
    ..writeAll(["1231232", "432423", "5435346"]);
  print(stringBuffer);
}
