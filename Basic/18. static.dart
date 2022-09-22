class People {
  static String name = "Ray";

  static void show() {
    print('show $name 123');
  }
}

void main(List<String> args) {
  print(People.name);
  People.show();
}
