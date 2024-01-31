import 'dart:io';

class Employee {
  int? id;
  int? name;
  int? dept;
  int? salary;

  int? get getId => this.id;

  set setId(int? id) => this.id = id;

  get getName => this.name;

  set setName(name) => this.name = name;

  get getDept => this.dept;

  set setDept(dept) => this.dept = dept;

  get getSalary => this.salary;

  set setSalary(salary) => this.salary = salary;

  salaryCalculator() {
    int basicSal = 50000;

    Map<String, double> allowance = {
      'admin': 0.20,
      'teamLead': 0.70,
      'technical': 0.60,
      'officeStaff': 0.10
    };

    String input = stdin.readLineSync()!;

    print('Salary: ${allowance[input]! * basicSal + basicSal}');
  }
}

void main() {
  Employee salary = new Employee();
  salary.salaryCalculator();
}
