import 'dart:io';
// 1. Develop a Dart function named getMathFunctions that returns a map of mathematical functions.
// The keys of the map should be strings representing mathematical operations ("add", "subtract", "multiply", "divide"), and the values should be closure functions that perform the corresponding operations on two integers.

// 2. Write a Dart function named factorialFunction that takes an integer n as an argument and returns a closure function.
//The closure function, when called with an integer x, should compute the factorial of x using the value of n as the upper limit for recursion.

// 3. Write a Dart function named filterList that takes a list of integers and a closure function as arguments. The closure function should determine whether an integer should be included in the filtered list. The filterList function should return a new list containing only the integers that satisfy the condition specified by the closure function.

// 4. Create a Dart function named generateFibonacciFunction that returns a closure function. The closure function, when called with an integer n, should return the nth Fibonacci number.

// 5. Write a Dart function named processNumbers that takes a list of integers and two closure functions (mapper and filter). The mapper function should transform each integer in the list, and the filter function should filter out specific integers based on a condition. The processNumbers function should return a new list with the transformed and filtered integers.

void main() {
  Map<String, Function> result = math(40);

  // print(result["add"]!(10, 20));
  // print(result["sub"]!(10, 20));

  Function f = factorial(2);
  print(f(7));

  List<int> list = [1, 2, 3, 4, 5, 6, 7];
  List<int> l1 = filterList(list, filter());
  print(l1);

  print(processNumbers(list, mapper(), filter()));

  print(generateFibonacciFunction()(6));
}

Map<String, Function> math(int a) {
  int b = 69;

  Function add = (int x, int y) {
    print('add');
    return a + b + x + y;
  };

  Function sub = (int x, int y) {
    print('sub');
    return a - b - x - y;
  };

  Function mul = (int x, int y) {
    print('multiply');
    return a * b * x * y;
  };

  Function div = (int x, int y) {
    print('divide');
    return a / b / x / y;
  };

  return {"add": add, "sub": sub, "mul": mul, "div": div};
}

Function factorial(int n) {
  int fact(int x) {
    if (x <= 1 || x <= n) {
      return 1;
    } else {
      return fact(x - 1) * x;
    }
  }

  return fact;
}

List<int> filterList(List<int> l, Function f) {
  List<int> li = [];
  for (int i in l) {
    if (f(i)) {
      li.add(i);
    }
  }
  return li;
}

Function filter() {
  bool filterOdd(int x) {
    if (x % 2 == 0) {
      return false;
    } else {
      return true;
    }
  }

  ;

  return filterOdd;
}

Function generateFibonacciFunction() {
  int fibonacci(int n) {
    int x = 0, y = 1;
    if (n == 0) return 0;
    if (n == 1) return 1;
    for (int i = 2; i < n; i++) {
      int z = x;
      x = y;
      y = z + x;
    }
    return y;
  }

  return fibonacci;
}

List processNumbers(List<int> list, Function mapper, Function filter) {
  List<int> filteredList = [];
  for (int i in list) {
    int j = mapper(i);
    if (filter(j)) filteredList.add(j);
  }

  return filteredList;
}

Function mapper() {
  int mulThree(int i) {
    return i * 3;
  }

  return mulThree;
}
