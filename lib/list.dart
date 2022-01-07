// ignore_for_file: avoid_print

import 'dart:io';


import 'Game.dart';

void main() {
  // const maxRandom = 100;
  List<int> myList = [];
  List<int> myList2 = [];
  print('╔════════════════════════════════════════');
  stdout.write('║Enter a maximum number to random: ');

  var intmax = stdin.readLineSync();
  var game = Game(intmax);

  var isCorrect = false;
  var rd = false;
  var cn1=0;
  print('╚────────────────────────────────────────');
  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');


  do {

    stdout.write('║ Guess the number between 1 and $intmax: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }


    var result = game.doGuess(guess);


    var c = game.count;
    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else if (result == 0){
      print('║ ➜ $guess is CORRECT ❤, total guesses: $c');
      cn1++;
      myList.add(cn1);
      myList2.add(c);
      print('╟────────────────────────────────────────');
      print('║                 THE END                ');
      print('╚════════════════════════════════════════');
      rd = false;
      do{
        stdout.write('Play again Y/N:');
        var ooo = stdin.readLineSync();
        if (ooo == "Y"|| ooo == "y") {
          isCorrect = false;
          rd =true;
          print('╔════════════════════════════════════════');
          stdout.write('╟Enter a maximum number to random: ');
          intmax = stdin.readLineSync();
          print('╚────────────────────────────────────────');
          print('╔════════════════════════════════════════');
          print('║            GUESS THE NUMBER            ');
          print('╟────────────────────────────────────────');
        } else if (ooo == "N"|| ooo=="n") {
          print('You ve played'+cn1.toString()+'games');
          for (var i = 0; i < myList.length; i++){
            print('🚀 myGame #'+myList[i].toString()+': '+myList2[i].toString()+' guesses ');
          }
          exit(0);
        }
      }while(!rd);
    }

  } while (!isCorrect);


}
