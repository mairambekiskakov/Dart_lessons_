import 'dart:io';
import 'dart:math';

void main() {
  print("Добро пожаловать в игру");
  int number = Random().nextInt(100) + 1;
  // print(number);
  int guess = 0;
  int tries = 0;

  while (guess != number && tries != 10) {
    stdout.write("Загадайте число-");
    try {
      guess = int.parse(stdin.readLineSync()!);
    } on Exception {
      print("Попробуйте еще раз");
      continue;
    }
    if (guess > number) {
      print("Число меньше");
    } else if (guess < number) {
      print("Число больше");
    }
    tries++;
  }
  if (guess == number) {
    print("Поздравляем! Вы угадали число!");
  } else {
    print("Почти угадали!  Число было $number");
  }
}
