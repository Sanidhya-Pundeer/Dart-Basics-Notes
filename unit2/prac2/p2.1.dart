class Vehicle {
  String? model;
  int? Make;
  Vehicle(model, Make) {
    this.model = model;
    this.Make = Make;
  }
}

class Car extends Vehicle {
  Car(String model, int Make) : super(model, Make);
}

class Truck extends Vehicle {
  Truck(String model, int Make) : super(model, Make);
}

class SportsCar extends Car {
  double? topSpeed;

  SportsCar(String model, int Make, this.topSpeed) : super(model, Make);
}
