void product(List<int> l1, {required int a, int b = 10}) {
  int sum = 0;
  for (int i in l1) {
    sum = sum + i;
  }
  sum = sum + b;
  print('the product is${sum * a}');
}

bool fun({required String str, int a = 5, List<int>? l2}) {
  bool f = false;
  if (str.length > a) {
    if (l2 != null) {
      for (int i in l2) {
        if (i % 2 == 0) {
          f = true;
        } else {
          f = false;
          break;
        }
      }
    }
  }
  if (f == false) {
    return false;
  } else {
    return true;
  }
}

void main() {
  List<int> l = [2, 6, 2];
  // print(prod(l, a:2));
  print(fun(str: 'sanidhya', l2: l));
}
