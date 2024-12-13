class Teacher {
  String? name;
  String? subject;

  Teacher(String nameInput, String subjectInput) {
    name = nameInput;
    subject = subjectInput;
  }

  void introduce(String name, String subject) {
    List<String> teacherInfo = [name, subject];
    print('teacher & his subject:$teacherInfo');
  }
}

class Student {
  String? name;
  int? gradeLevel;

  Student(String nameInput, int gradeLevelInput) {
    name = nameInput;
    gradeLevel = gradeLevelInput;
  }

  void introduce(String name, int gradeLevel) {
    List studentInfo = [name, gradeLevel];
    print(studentInfo);
  }
}

class Classroom {
  String? className;
  Teacher? teacher;
  List<Student> students = [];

  Classroom(String classNameInput, Teacher teacherInput) {
    className = classNameInput;
    teacher = teacherInput;
  }

  void addStudent(Student s) {
    students.add(s);
    print('${s.name} was added');
  }

  void removeStudent(String name) {
    students.removeWhere((s) => s.name == name);
    print('$name was removed');
  }

  void printClassInfo() {
    print('Classroom: $className');
    teacher?.introduce(teacher!.name!, teacher!.subject!);
    print('Students:');
    for (var student in students) {
      student.introduce(student.name!, student.gradeLevel!);
    }
  }
}

void main() {
  Teacher mrSmith = Teacher('Mr. Smith', 'Mathematics');
  Student s1 = Student('Alice', 10);
  Student s2 = Student('Bob', 10);

  Classroom mathClass = Classroom('Algebra 101', mrSmith);
  mathClass.addStudent(s1);
  mathClass.addStudent(s2);
  mathClass.printClassInfo();
}
