class Phone {
  Phone(String getCall) {
    call(getCall);
  }

  call(String myCall) {
    print(myCall);
  }
}

void main(List<String> args) {
  var phone = Phone('init call');
  phone('call class');
}
