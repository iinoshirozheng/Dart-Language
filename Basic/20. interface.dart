class Phone {
  void start() {
    print("starting");
  }

  void shutdown() {
    print("shutting");
  }
}

abstract class System {
  String system = '';
}

class IPhone implements Phone, System {
  String system = 'ios';

  void start() {
    print("start iphone");
  }

  void shutdown() {
    print('end iphone');
  }
}

void main(List<String> args) {
  var myPhone = IPhone();
  myPhone.start();
  myPhone.shutdown();
}
