class Phone {
  void startUp() {
    print("start up");
  }

  void shutdown() {
    print("shutdown");
  }
}

class IOSPhone extends Phone {
  void startUp() {
    print("ios system running");
  }
}

class AndroidPhone extends Phone {
  void startUp() {
    print("android system running");
  }
}

Phone getPhone(String phoneName) {
  switch (phoneName) {
    case "iPhone":
      return IOSPhone();
      break;
    case "Android":
      return AndroidPhone();
      break;
    default:
      return Phone();
  }
}

abstract class Phone2 {
  factory Phone2(String phoneName) {
    switch (phoneName) {
      case "iPhone":
        return IOSPhone2();
        break;
      default:
        return AndroidPhone2();
    }
  }
  void startUp();
}

class IOSPhone2 implements Phone2 {
  void startUp() {
    print("ios system running");
  }
}

class AndroidPhone2 implements Phone2 {
  void startUp() {
    print("android system running");
  }
}

void main(List<String> args) {
  var phone = getPhone('iPhone');
  phone.startUp();

  var phone2 = Phone2('iphone');
  phone2.startUp();
}
