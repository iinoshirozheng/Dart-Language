class Televersion {
  @deprecated
  void activate() => turnOn();

  void turnOn() => print('On');
}

void main(List<String> args) {
  var t = new Televersion();
  t.activate(); // -> deprecated but still can use
  t.turnOn();
}
