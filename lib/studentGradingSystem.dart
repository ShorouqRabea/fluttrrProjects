//Student Grading System
import 'dart:io';

void main() {
  while (true) {
    // the student enter his name and storing the name in map > student
    print("Enter your name");
    String studentName = stdin.readLineSync()!;
    Map<String, dynamic> student = {'Name': studentName};

    // the student enters his scores in three subjects(English, Maths, Science)
    print("Enter your English score");
    double englishScore = double.parse(stdin.readLineSync()!);
    print("Enter your maths score");
    double mathsScore = double.parse(stdin.readLineSync()!);
    print("Enter your science score");
    double scienceScore = double.parse(stdin.readLineSync()!);

    // if condition > to check English score of student and give him the appropriate letter grade and storing the letter grade in map > student
    if (englishScore < 0 || englishScore > 100) {
      print('invalid score please enter right score');
    } else if (englishScore <= 100 && englishScore >= 90) {
      student['English score'] = 'A';
    } else if (englishScore <= 89 && englishScore >= 80) {
      student['English score'] = 'B';
    } else if (englishScore <= 79 && englishScore >= 70) {
      student['English score'] = 'C';
    } else if (englishScore <= 69 && englishScore >= 60) {
      student['English score'] = 'D';
    } else {
      student['English score'] = 'F';
    }

    // if condition > to check Maths score of student and give him the appropriate letter grade and storing the letter grade in map > student
    if (mathsScore < 0 || mathsScore > 100) {
      print('invalid score please enter right score');
    } else if (mathsScore <= 100 && mathsScore >= 90) {
      student['Maths score'] = 'A';
    } else if (mathsScore <= 89 && mathsScore >= 80) {
      student['Maths score'] = 'B';
    } else if (mathsScore <= 79 && mathsScore >= 70) {
      student['Maths score'] = 'C';
    } else if (mathsScore <= 69 && mathsScore >= 60) {
      student['Maths score'] = 'D';
    } else {
      student['Maths score'] = 'F';
    }

    // if condition > to check Science score of student and give him the appropriate letter grade and storing the letter grade in map > student
    if (scienceScore < 0 || scienceScore > 100) {
      print('invalid score please enter right score');
    } else if (scienceScore <= 100 && scienceScore >= 90) {
      student['Science score'] = 'A';
    } else if (scienceScore <= 89 && scienceScore >= 80) {
      student['Science score'] = 'B';
    } else if (scienceScore <= 79 && scienceScore >= 70) {
      student['Science score'] = 'C';
    } else if (scienceScore <= 69 && scienceScore >= 60) {
      student['Science score'] = 'D';
    } else {
      student['Science score'] = 'F';
    }

    // calculate the total score of three subjects (English, Maths, Science) and storing the total score in map > student
    double totalScore = englishScore + mathsScore + scienceScore;
    student['total score'] = totalScore;

    // alculate the average score of three subjects (English, Maths, Science) and storing average score in map > student
    //  > dynamic data type store any data type
    dynamic averageScore = totalScore / 3;
    //  > average score (rounded to two decimal places) and average here is string
    averageScore = averageScore.toStringAsFixed(2);
    // > casting data type of average score from string to double
    averageScore = double.parse(averageScore);
    student['Average score'] = averageScore;

    // if condition > to check average score of student and give him the appropriate letter grade and storing the letter grade of average score in map > student
    if (averageScore <= 100 && averageScore >= 90) {
      student['The letter grade'] = 'A';
    } else if (averageScore <= 89 && averageScore >= 80) {
      student['The letter grade'] = 'B';
    } else if (averageScore <= 79 && averageScore >= 70) {
      student['The letter grade'] = 'C';
    } else if (averageScore <= 69 && averageScore >= 60) {
      student['The letter grade'] = 'D';
    } else {
      student['The letter grade'] = 'F';
    }

    // print the student's name, individual subject scores, total score, average score (rounded to two decimal places), and the assigned letter grade.
    print(student);
  }
}
