void main(List<String> args) {
  // weak type
  // define variable , but don't initialize
  var a;
  a = 123;
  a = "123";
  a = false;
  print(a);

  // define variable, and initialize variable
  var b = "Ray";
  // b = 10; // A value of type 'int' can't be assigned to a variable of type 'String'.
  print(b);

  // dynamic
  dynamic c = "Ray";
  c = 123;
  c = false;
  // c.test(); --> error , dynamic will checking the variable when it is compile

  Object d = "Ray";
  d = 123;
  d = true;
  // d.test(); --> error, compiler will find the error

  // Strong type variables
  String e = "Ray";
  bool f = true;

  // all the variables in original is set with null
  // when you make API please use Strong Type variables !!
}
