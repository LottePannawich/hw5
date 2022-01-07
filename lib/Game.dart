import 'dart:math';

class Game {
  var maxRandom;
  int? _answer;
  int count=0;
  int gg=0;

  int guessCount = 0;
  var max;
  Game(var maxRan) {
    maxRandom=maxRan;
    var r = Random();
    max =int.tryParse(maxRandom!);
    _answer = r.nextInt(max!) + 1;


  }

  int doGuess(int num) {
    if (num > _answer!) {
      guessCount++;
      count=guessCount;
      return 1;
    } else if (num < _answer!) {
      guessCount++;
      count=guessCount;
      return -1;
    } else {
      guessCount++;
      count=guessCount;
      var r = Random();
      _answer = r.nextInt(max!) + 1;
      guessCount =0;
      return 0;

    }

  }
}