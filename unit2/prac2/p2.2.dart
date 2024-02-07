class Product {
  String? name;
  double? price;
  int? quantity;

  Product(String name, double price, int quantity) {
    this.name = name;
    this.price = price;
    this.quantity = quantity;
  }
}

abstract class ElectronicDevice {
  void turnOff();

  void turnOn();
}

class Television extends Product implements ElectronicDevice {
  int? screenSize;

  Television(String name, double price, int quantity)
      : super(name, price, quantity);

  @override
  void turnOff() {
    print('heelo');
  }

  @override
  turnOn() {
    print('kk');
  }
}

class Laptop extends Product implements ElectronicDevice {
  int? batteryLife;

  Laptop(String name, double price, int quantity)
      : super(name, price, quantity);

  @override
  void turnOff() {}

  @override
  void turnOn() {}
}
