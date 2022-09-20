import 'dart:ffi';

void main(List<String> args) {
  // Basic
  int a = 0;
  double b = 1.234;

  // support 10bit 16bit
  int c = 123;
  int d = 0xfff;

  // scientific notation
  double e = 21.2e3;

  // transform
  // string -> int
  num f = num.parse("123");

  // number -> String
  String i = 123.toString();

  // bit operations
  // binary , decimal, hex
  // & operator
  int j = (10 & 5);

  // or operator
  int k = (10 | 2);

  // not
  int l = ~10;

  // Xor
  int m = 1 ^ 10;

  // operator move
  int n = 2 >> 3;
  int o = 128 << 3;
}
