void main(List<String> args) {
  List ls = [];
  ls.add('123');
  ls.add(123);

  List ls2 = []..length = 10;
  List<int> ls3 = List.filled(10, 2, growable: false);
  print(ls3);
}
