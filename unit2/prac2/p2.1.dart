class Vehicle {
  String? model;
  int? Make;
  get getModel => this.model;

  set setModel(model) => this.model = model;

  get getMake => this.Make;

  set setMake(Make) => this.Make = Make;

  Vehicle({requiredmodel, Make}) {
    this.model = model;
    this.Make = Make;
  }
}

class Car extends Vehicle {}

class Truck extends Vehicle {}

class SportsCar extends Car {
  int? topSpeed;
}
