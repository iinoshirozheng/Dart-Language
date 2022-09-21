void main(List<String> args) {
  String a = '👺';
  print(a.length);
  print(a.runes.length);

  // emoji length = 2
  String b = '12345👺';
  print(b.length);
  print(b.runes.length);

  // unicode
  Runes unicode = Runes('\u{1f596} \u6211');
  var str = String.fromCharCodes(unicode);
  print(str);

  var c = '👺';
  print(c.codeUnits);
  print(c.codeUnitAt(0));
}
