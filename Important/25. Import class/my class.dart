abstract class Phone {
  factory Phone(String name) {
    switch (name) {
      case 'android':
        return AndroidPhone();
      default:
        return IOSPhone();
    }
  }
  void run();
}

class AndroidPhone implements Phone {
  void run() {
    print("Android is running ~");
  }
}

class IOSPhone implements Phone {
  void run() {
    print("Ios is running ~");
  }
}
