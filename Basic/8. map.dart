void main(List<String> args) {
  var a = Map();
  a['name'] = 'Ray';
  a[123] = "456";

  // property
  a.isEmpty;
  a.isNotEmpty;
  a.length;
  a.keys;
  a.values;

  // method
  var b = {"first": 'C', "second": 'C++', 123: 345};
  // find
  b.containsKey("first");
  b.containsValue("C");
  b.remove("first");
  b.clear();
  b.removeWhere((key, value) => key == "first");
  b.update('first', (value) => 123);
  b.updateAll((key, value) => "=====$value=====");
}
