///Student Information System///
import 'dart:io';

// class student
class student {
  String? name;
  int? age;
  String? grade;
  // constructor
  student(String nameInput, int ageInput, String gradeInput) {
    name = nameInput;
    age = ageInput;
    grade = gradeInput;
  }
  // function to print student information
  void printInfo() {
    Map<String, dynamic> studentInfo = {
      'student Name': name,
      'student Age': age,
      'student Grade': grade
    };
    print(studentInfo);
  }

  // function to update the grade
  void updateGrade(String grade_in) {
    grade = grade_in;
  }
}

void main() {
  // the user enter name of object1, age of object1 and grade of object1
  print('Enter student Name of object1');
  String nameObject1 = stdin.readLineSync()!;
  print('Enter student Age of object1');
  int ageObject1 = int.parse(stdin.readLineSync()!);
  print('Enter student Grade of object1');
  String gradeObject = stdin.readLineSync()!;
  //the first object
  student student1 = student(nameObject1, ageObject1, gradeObject);
  // function to print student information
  student1.printInfo();
  // function to update the grade
  print('Enter update of object1 Grade ');
  String gradeUpdateObject1 = stdin.readLineSync()!;
  student1.updateGrade(gradeUpdateObject1);
  print('after update of object1 grade to $gradeUpdateObject1');
  // function to print student information after update the grade
  student1.printInfo();

  // the user enter name of object2, age of object2 and grade of object2
  print('Enter student Name of object2');
  String nameObject2 = stdin.readLineSync()!;
  print('Enter student Age of object2');
  int ageObject2 = int.parse(stdin.readLineSync()!);
  print('Enter student Grade of object2');
  String gradeObject2 = stdin.readLineSync()!;
  // the second object
  student student2 = student(nameObject2, ageObject2, gradeObject2);
  // function to print student information
  student2.printInfo();
  // function to update the grade
  print('Enter update of object2 Grade');
  String gradeUpdateObject2 = stdin.readLineSync()!;
  student2.updateGrade(gradeUpdateObject2);
  print('after update of object2 grade to $gradeUpdateObject2');
  // function to print student information after update the grade
  student2.printInfo();

  // the user enter name of object3, age of object3 and grade of object3
  print('Enter student Name of object3');
  String nameObject3 = stdin.readLineSync()!;
  print('Enter student Age of object3');
  int ageObject3 = int.parse(stdin.readLineSync()!);
  print('Enter student Grade of object3');
  String gradeobject3 = stdin.readLineSync()!;
  // the third object
  student student3 = student(nameObject3, ageObject3, gradeobject3);
  // function to print student information
  student3.printInfo();
  // function to update the grade
  print('Enter update of object3 Grade');
  String gradeUpdateObject3 = stdin.readLineSync()!;
  student3.updateGrade(gradeUpdateObject3);
  print('after update of object3 grade to $gradeUpdateObject3');
  // function to print student information after update the grade
  student3.printInfo();
}
