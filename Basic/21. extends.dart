abstract class Phone {
  void startUp();
  void Shutdown() {}
  String system;
  Phone(this.system);
}

// implements must to instance all things in class
// extends just need to instance virtual function
class IOSPhone extends Phone {
  IOSPhone() : super('ios');
  void startUp() {
    print('my iphone is $system System');
  }

  @override
  void noSuchMethod(Invocation mirror) {
    print('override noSuchMethod');
  }
}

void main(List<String> args) {
  IOSPhone phone = IOSPhone();
  phone.startUp();

  dynamic phone2 = IOSPhone();
  phone2.hauisdh();
}
