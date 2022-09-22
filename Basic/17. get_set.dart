class People {
  String _name = '';

  String test = '';

  People(this._name);

  set pName(String value) {
    _name = value;
  }

  String get pName {
    return 'my name is $_name';
  }
}

void main(List<String> args) {
  var p = People('Ray');
  print(p.pName);
  p.test = '12345';
  print(p.test);
}
