void main(List<String> args) {
  var set = Set();
  set.add("1");
  set.add("2");
  set.add("3");
  set.add("4"); // only once
  set.add("4");
  set.add("4");
  print(set);

  // property
  set.isEmpty;
  set.isNotEmpty;
  set.first;
  set.last;
  set.length;

  // method
  // add
  set.addAll(['C', 'C++', 'C#']);

  // find
  set.contains('dart');
  set.containsAll(['C', "C++", "C--"]); // false -> must to be all same

  var set_2 = {"C++", "C", "dart"};
  print(set.difference(set_2)); // output difference
  print(set.intersection(set_2));
  print(set.union(set_2));

  set.remove("1");
  print(set.firstWhere((element) => element == "4"));
  print(set.lastWhere((element) => element == "C#"));

  set.retainAll(["1", '2']);
  print(set);
  set.clear();
}
