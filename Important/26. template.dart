void main(List<String> args) {
  // Template Basic Use
  List ls = <String>[];
  // ls.add(123); error , only can use string type
  ls.add('String');

  Map map = Map<int, String>();
  map[0] = '123';
  map[1] = '456';
  print(map);

  // Template function
  Key add<Key, Value>(Key key, Value value) {
    print('key = $key, val = $value');
    return key;
  }

  var template = add('Key', 123);
  print(template);

  var newPhone = Phone('09-05288351');
  print(newPhone.mobileNumber);

  var phoneNumber = Phone<int>(123456789);
  print(phoneNumber.mobileNumber);

  // <T> can write or not write when you create the object
  var iosPhone = IOSPhone<Phone>(Phone<String>('my IPhone'));
  print(iosPhone.mobile.mobileNumber);
}

// Template class structure
class Phone<T> {
  final T mobileNumber;
  Phone(this.mobileNumber);
}

// Template class limit
class IOSPhone<T extends Phone> {
  final T mobile;
  IOSPhone(this.mobile);
}
