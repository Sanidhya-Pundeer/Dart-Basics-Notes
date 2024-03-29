// 3. Develop a function that performs a union operation on two sets without using built-in set union methods.
// 4. Implement a function to find the intersection of two sets without using built-in set intersection methods.

// import 'dart:async';
// import 'dart:html';
import 'dart:io';
//import 'dart:math';

void main() {
  //rockPaperScissors();
  library();
}
// 1. Make a two-player Rock-Paper-Scissors game against computer. Ask for player’s input, compare them, print out a message to the winner.

// rockPaperScissors() {
//   print('do you want to play a rock-paper-scissors game?');
//   print('enter y for yes and n for no.');

//   String? decision = stdin.readLineSync();

//   if (decision == 'y') {
//     playGame();
//   } else if (decision == 'n') {
//     print('fine leave then...');
//   } else {
//     print('invalid input');
//   }
// }

// playGame() {
//   print('this is a game of rock paper and scissors');
//   print('enter 1 for rock, 2 for paper or 3 for scissors');

//   var input = int.parse(stdin.readLineSync().toString());

//   int rad = Random().nextInt(3) + 1;
//   // have to add 1 cause it generates number from 0 to 3

//   if (input == 1) {
//     if (rad == 2) {
//       print('you chose rock, computer chose paper');
//       print('');
//       print('you lost the game');
//       print('do you want to play again?');
//       print('enter y for yes and n for no');
//       playAgain();
//     } else if (rad == 3) {
//       print('you chose rock, computer chose scissors');
//       print('');
//       print('you win the game');
//       print('do you want to play again?');
//       print('enter y for yes and n for no');
//       playAgain();
//     } else if (rad == 1) {
//       print('you and computer both chose rock ');
//       print(' ');
//       print('its a draw');
//       print('do you want to play again?');
//       print('enter y for yes and n for no');
//       playAgain();
//     }
//   } else if (input == 2) {
//     if (rad == 1) {
//       print('you chose paper, computer chose rock');
//       print('');
//       print('you win the game');
//       print('do you want to play again?');
//       print('enter y for yes and n for no');
//       playAgain();
//     } else if (rad == 3) {
//       print('you chose paper, computer chose scissors');
//       print('');
//       print('you lost the game');
//       print('do you want to play again?');
//       print('enter y for yes and n for no');
//       playAgain();
//     } else if (rad == 2) {
//       print('you and computer both chose paper');
//       print('');
//       print('its a draw');
//       print('do you want to play again?');
//       print('enter y for yes and n for no');
//       playAgain();
//     }
//   } else if (input == 3) {
//     if (rad == 1) {
//       print('you chose scissors, computer chose rock');
//       print('');
//       print('you lost the game');
//       print('do you want to play again?');
//       print('enter y for yes and n for no');
//       playAgain();
//     } else if (rad == 2) {
//       print('you chose scissors, computer chose paper');
//       print('');
//       print('you win the game');
//       print('do you want to play again?');
//       print('enter y for yes and n for no');
//       playAgain();
//     } else if (rad == 3) {
//       print('you and computer both chose scissors');
//       print('');
//       print('its a draw');
//       print('do you want to play again?');
//       print('enter y for yes and n for no');
//       playAgain();
//     }
//   }
// }

// playAgain() {
//   String? decision2 = stdin.readLineSync();
//   if (decision2 == 'y') {
//     playGame();
//   } else {
//     print('thanks for playing the game');
//   }
// }

// // 2. Write a function that checks if a given Set is a subset of another Set.
// setOrSubset() {
//   //syntax to generate a set:
//   // var a = <int>{10, 11, 12, 13, 14, 15};
//   // var b = <int>{11, 13, 15};
// }

// 5. Create a program that simulates a library catalog system using a map. Allow users to add books, check out books, and view the current status of books.

library() {
  Map<String, String> name = {
    'potter': 'booked',
    'diary of a wimpy kid': 'unbooked'
  };

  print('enter the name of the book');
  var book = stdin.readLineSync();
  print(book);

  if (name.containsKey(book)) {
    print(name[book]);
  } else {
    print('book not found');
  }
  print('do you want to edit the names and status of the book?');
  print('press y to edit, n to exit');

  var decision = stdin.readLineSync();
  if (decision == 'y') {
    print('enter the name of the book');

    var editBook = stdin.readLineSync()!;

    if (name.containsKey(editBook)) {
      print('enter the status of the boook');

      var status = stdin.readLineSync()!;
      name[editBook] = status;

      print('book status successfully updated');
      print(name);
    } else {
      print('the book entered does not exist');
    }
  } else if (decision == 'n') {
    print('thank you for visiting');
  } else {
    print('invalid input');
  }
}
