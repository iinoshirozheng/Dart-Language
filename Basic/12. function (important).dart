// function
int add(int x, int y) {
  return x + y;
}

// choose function
int add_choose(int x, [int y = 0, int z = 0]) // you can choose y,z
{
  return x + y + z;
}

// name parameter
int add_namespace({int x = 1, int y = 3, int z = 2}) {
  return x + y + z;
}

Function makeAdd(int x) {
  int add(int y) {
    return y + x;
  }

  return add; // or (int y) => x + y;
}

main() {
  var a = add_choose(1, 2);
  print(a);

  var b = add_namespace(x: 1, y: 2);

  void add_2(int x, int y, int z) {
    print(x + y + z);
  }

  add_2(1, 2, 1);

  Function add = makeAdd(10);
  print(add(3));
}
