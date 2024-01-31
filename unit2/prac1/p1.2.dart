import 'dart:io';

class Student {
  String? stName;
  int? stNumber;
  int? marks1;
  int? marks2;
  int? marks3;
  get getStName => this.stName;

  set setStName(stName) => this.stName = stName;

  get getStNumber => this.stNumber;

  set setStNumber(stNumber) => this.stNumber = stNumber;

  get getMarks1 => this.marks1;

  set setMarks1(marks1) => this.marks1 = marks1;

  get getMarks2 => this.marks2;

  set setMarks2(marks2) => this.marks2 = marks2;

  get getMarks3 => this.marks3;

  set setMarks3(marks3) => this.marks3 = marks3;

  totalMarksCalculator(int marks1, int marks2, int marks3) {
    int total = marks1 + marks2 + marks3;
    print('total marks ${total}');
  }

  nameConvertor(String stName) {
    //not completed yet
    stName.split(' ');
  }

  percentageGradeCalculator(total) {
    double percent = (total / 300) * 100;
    print('percentage: ${percent}');

    if (percent >= 90) {
      print('grade A');
    } else if (percent < 90 && percent >= 70) {
      print('grade B');
    } else if (percent < 70 && percent >= 60) {
      print('grade C');
    } else if (percent < 60 && percent >= 50) {
      print('grade D');
    } else if (percent < 50) {
      print('grade E');
    }
  }
}

void main() {
  Student student = new Student();
  print('Enter the marks of 3 subjects:');
  int marks1 = int.parse(stdin.readLineSync()!);
  int marks2 = int.parse(stdin.readLineSync()!);
  int marks3 = int.parse(stdin.readLineSync()!);
  student.totalMarksCalculator(marks1, marks2, marks3);

  print('Enter the name of the student');
  String stName = stdin.readLineSync()!;
  student.nameConvertor(stName);

  int total = marks1 + marks2 + marks3;
  student.percentageGradeCalculator(total);
}
