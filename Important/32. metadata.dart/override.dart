abstract class Phone {
  void testOverride();
}

class IPhone extends Phone {
  @override
  void testOverride() {
    print("override phone");
  }
}

void main(List<String> args) {
  var iphone = new IPhone();
  iphone.testOverride();
}
