import 'dart:html';
import 'dart:io';

void main() {
  List<int> dice = [1, 2, 3, 4, 5, 6];
  List<int> playerScore = [0, 0, 0];
  List<int> compScore = [0, 0, 0];
  compareScores(playerScore[0], compScore[0]);
}

void compareScores(int player, int comp) {
  if (player > comp) {
    print('Player won');
  } else if (player<comp){
    print('Comp won')
  } else{
    print('Draw');
  }
}

int playRound(String name, int score, List<int>dice){
  print('Now is ${name}s turn, if you are ready type yes');
  String a=stdin.readLineSync()!;
  if(a=='yes'){
    score = tossDice(dice);
    print('You got $score');
    return score;
  } else {
    print('You are not ready, you got 0');
  }
}
