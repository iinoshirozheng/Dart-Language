// https://ducafecat.tech/2018/11/12/dart/dart-16-operators/

void main(List<String> args) {
  num a = 123;
  var b = a as num;
  print(b.runtimeType);

  String c = '123';
  print(c is! String);
  String txtVal = "123" == true ? 'yes' : 'no';
  print(txtVal);

  bool isFinished = null ?? false;

  String d = '';
  print(d.length); // d?.length --> if d is null return null
}
