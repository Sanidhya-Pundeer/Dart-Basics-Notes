main() {
  final person1 = Person(name: 'Jake', age: 23);
  // print(person1.name);
  // print(person1.age);
  // print(person1);
  // print(person1.toString());
}

//different ways to initailize this keyword

class Person {
  String? name;
  int? age;

//1st way to initailize
// Person({required name, required age}){
//   this.name = name;
//   this.age = age;
// }

//2nd way to initailize (one line declaration)
  Person({required name, required age})
      : this.name = name,
        this.age = age;
}

class Employee {
  // underscore is used to make the variable or instance private
  int? _id;
  String? _name;
  double? _salary;
  String? _email;
  String? _address;
  int? _phone;
  int? get id => this._id;

  set id(int? value) => this._id = value;

  get name => this._name;

  set name(value) => this._name = value;

  get salary => this._salary;

  set salary(value) => this._salary = value;

  get email => this._email;

  set email(value) => this._email = value;

  get address => this._address;

  set address(value) => this._address = value;

  get phone => this._phone;

  set phone(value) => this._phone = value;

// only one default constructor available in dart
//cant make 2 constructor with same with different parameters
  Employee() {
    print('Object initialized');
  }

//2. Name constructor with block body
  Employee.empCustom(int id, String name, double salary, String email,
      String address, int phone) {
    this._id = id;
    this._name = name;
    this._salary = salary;
    this._email = email;
    this._address = address;
    this._phone = phone;
  }

  //whithout block body
  Employee.empCustom1(int id, String name, double salary, String email,
      String address, int phone) {}

  Employee.empCustom2(this._id, this._name, {String? email, double? salary}) {}

  Employee.empCustom3(this._id, this._name, [String? email, double? salary]) {}

  //Default value constructor
  Employee.empCustom4(String? name, int? id) {
    this._id = id ?? 101;
    this._name = name ?? 'jake';
  }
}
