abstract class People {
  static const String name = "Ray";
  void printName() {
    print(name);
  }

  void test();
}

// inheritance
class Teacher extends People {
  void test() {}
}

// implements -> must to define the method
class Student implements People {
  void printName() {
    print('i\'m a student');
  }

  void test() {
    print('print test');
  }
}

void main(List<String> args) {
  var teacher = Teacher();
  teacher.printName();
}
