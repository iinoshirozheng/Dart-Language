abstract class People {
  static const String name = "Ray";
  void printName() {
    print(name);
  }
}

// inheritance
class Teacher extends People {}

// implements -> must to define the method
class Student implements People {
  void printName() {
    print('i\'m a student');
  }
}

void main(List<String> args) {
  var teacher = Teacher();
  teacher.printName();
}
