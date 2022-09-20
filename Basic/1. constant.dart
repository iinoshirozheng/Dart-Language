void main(List<String> args) {
  // define constants
  final String a = "Ray1105";
  const String b = "@Uj.com.tw";

  // different with final and const

  // const need a confirm variable
  // const DateTime c = new DateTime.now();  -> must sure the variable

  // immutable and transitive
  final List ls1 = [1, 2, 3];
  const List ls2 = [3, 4, 5];
  ls1[1] = 4;
  // ls2[1] = 6; -> const can not change the variables in List

  // const can reuse the memory
  final ls3 = [11, 22, 33];
  final ls4 = [11, 22, 33];
  print(identical(ls1, ls2));

  const ls5 = [11, 22, 33];
  const ls6 = [11, 22, 33];
  print(identical(ls5, ls6));
}
