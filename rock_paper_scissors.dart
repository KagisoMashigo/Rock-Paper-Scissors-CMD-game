/* 
Logic:
  while true
    show prompt
    read user input
    if input = r, p, s
      choose ai move at random
      comapare p and ai move
      show result
    else if input == q
      quit programme
    else
      invalid input 
*/
import 'dart:io';
import 'dart:math';
enum Move {rock, paper, scissors}

void main() {
  // random number generator
  final rng = Random();

  while(true) {

    stdout.write("Rock, paper or scissors bruh? (r/p/s) ");
    final input =  stdin.readLineSync();
    if (input == "r" || input == "p" || input == "s") {
      var playerMove;

      if (input == "r") {
        playerMove = Move.rock;
      } else if (input == "p") {
        playerMove = Move.paper;
      } else if (input == "s") {
        playerMove = Move.scissors;
      }

      final random = rng.nextInt(3);
      final aiMove = Move.values[random];

      print("You played $playerMove");
      print("AI played $aiMove");

      if (playerMove == aiMove) {
        print("That's a draw!");
      } else if (playerMove == Move.rock && aiMove == Move.scissors || 
      playerMove == Move.scissors && aiMove == Move.paper ||
      playerMove == Move.paper && aiMove == Move.rock){
        print("You win bruh!");
      } else {
        print("Eish, ya lose dog");
      }

    } else if (input == "q") {
      print("Thanks for playing!");
      break;
    } else {
      print("Invalid input");
    } 
  }
  
}