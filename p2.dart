// 1. Create a list variable and store 6 three digit integer values in it. Create another list which contains reverse elements of this list.

// 2. Use the following List functions in the above list:
//     First
//     isEmpty
//     isNotEmpty
//     Length
//     Last
//     Reverse
//     Single
//     add()    //   list.add(<element>);
//     addAll()     //list.addAll([<element list separated by comma>]);
//     insert()     //list.insert(<index>,<value>);
//     insertAll()   //list_names.insertAll(<index>, [<list_of_value>]);
//     replaceRange()    //list_names.replaceRange(int start_val, int end_val, [<list_of_value>]);
//     remove()   //list_names.remove(value)
//     removeAll()   //list_name.removeAt(int index)
//     removeLast()  //list_names.removeLast()
//     removeRange()   //list_names. removeRange(int start, int end);

// 3. Cerate the following set variables and perform the following operations:
//     var a = <int>{10,11,12,13,14,15};
//     var b = <int>{12,18,29,43};
//     var c = <int>{2,5,10,11,32};
//     a. Union of a, b and c
//     b. Intersection of a and b
//     c. Difference of b and c

void main() {
  // ReverseListFunction();
  ListFunctions();
}

ReverseListFunction() {
  List<int> l1 = [213, 423, 523, 435, 768, 584];
  print(l1);

  var l2 = l1.reversed;
  var revList = new List.from(l2);
  print(revList);
}

ListFunctions() {
  List<String> names = ['peter', 'max', 'sam', 'john', 'bill', 'zorawar'];

  //--------------'First' Function------------------
  //can be used to change tha value of the first element in the list
  names.first = 'pan';
// also can be used to print the first element in the list
  print(names.first);

// --------------------isEmpty function--------------------
  print(names.isEmpty); //will give false and true val

  //--------------------isNotEmpty function--------------------
  print(names.isNotEmpty); //will give false and true val

//--------------------Length function--------------------
  print(names.length); //returns length of list

//--------------------Last function--------------------
  print(names.last);
}
