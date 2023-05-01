import 'dart:io';

// void main() {
// const int ROWS = 3;
// const int COLUMNS = 3;

// List<List<String>> board;

// void main() {
//   board = List.generate(ROWS, (_) => List.filled(COLUMNS, ''));

//   while (!gameOver()) {
//     printBoard();
//     int row = getInput('Enter row: ');
//     int col = getInput('Enter column: ');
//     makeMove(row, col, 'X');
//     if (!gameOver()) {
//       printBoard();
//       makeMove(getRandomRow(), getRandomColumn(), 'O');
//     }
//   }

//   printBoard();
//   print('Game over!');
// }

// void makeMove(int row, int col, String player) {
//   if (board[row][col] == '') {
//     board[row][col] = player;
//   } else {
//     print('That space is already occupied');
//   }
// }

// int getInput(String prompt) {
//   stdout.write(prompt);
//   String input = stdin.readLineSync();
//   return int.parse(input);
// }

// int getRandomRow() {
//   return Random().nextInt(ROWS);
// }

// int getRandomColumn() {
//   return Random().nextInt(COLUMNS);
// }

// bool gameOver() {
//   for (int i = 0; i < ROWS; i++) {
//     if (board[i][0] != '' && board[i][0] == board[i][1] && board[i][1] == board[i][2]) {
//       return true;
//     }
//   }

//   for (int i = 0; i < COLUMNS; i++) {
//     if (board[0][i] != '' && board[0][i] == board[1][i] && board[1][i] == board[2][i]) {
//       return true;
//     }
//   }

//   if (board[0][0] != '' && board[0][0] == board[1][1] && board[1][1] == board[2][2]) {
//     return true;
//   }

//   if (board[2][0] != '' && board[2][0] == board[1][1] && board[1][1] == board[0][2]) {
//     return true;
//   }

//   return false;
// }

// void printBoard() {
//   for (int i = 0; i < ROWS; i++) {
//     for (int j = 0; j < COLUMNS; j++) {
//       stdout.write(board[i][j] + ' ');
//     }
//     print('');
//   }
// }

// }

void main() {
  stdout.write('Enter a number: ');
  String input = stdin.readLineSync()!;
  int number = int.parse(input);

  while (number != 1) {
    if (number % 2 == 0) {
      number = number ~/ 2;
    } else {
      number = (number * 3 + 1) ~/ 2;
    }
    print(number);
  }
  print('Reached 1!');
}
