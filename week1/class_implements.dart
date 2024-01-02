void main() {}

abstract class IStudent {
  final String name;
  final int age;

  IStudent(this.name, this.age);

  void saySomething() {
    print(age);
  }
}

class Student implements IStudent {
  final String name;
  final int age;

  Student(this.name, this.age);

  @override
  void saySomething() {
    print('a');
  }
}

class Student2 implements IStudent {
  final String name;
  final int age;

  Student2(this.name, this.age);

  @override
  void saySomething() {}
}
