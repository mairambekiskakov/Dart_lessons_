
// 1)С клавиатуры вводится год. Программа должна определять високосный это год или нет. 
// Вывести на экран соответствующую надпись, а также количество дней в году.
// В високосном годе 366 дней, тогда как в обычном 365. Високосными годами являются все года делящиеся нацело на 4 за исключением столетий,
// которые не делятся нацело на 400.
import 'dart:io';

void main() {
  stdout.write("Введите год: ");
  int year = int.parse(stdin.readLineSync()!);

  if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
    print("Год $year - високосный. Количество дней: 366");
  } else {
    print("Год $year - не високосный. Количество дней: 365");
  }
}



// 2)Возьмем любое натуральное число. Если оно четное - разделим его пополам, если нечетное - умножим на 3, прибавим 1 и разделим пополам. 
//  Повторим эти действия с вновь полученным числом. Гипотеза гласит, что независимо от выбора первого числа рано или поздно мы получим 1.
void main() {
  int number = 23; // выбираем любое натуральное число
  int count = 0; // счетчик итераций
  
  while (number != 1) {
    count++; // увеличиваем счетчик итераций
    print("Итерация $count: $number"); // выводим текущее число
    
    if (number % 2 == 0) {
      number = number ~/ 2; // если число четное, делим его пополам
    } else {
      number = (number * 3 + 1) ~/ 2; // если число нечетное, умножаем на 3, прибавляем 1 и делим на 2
    }
  }
  
  print("Итерация ${count+1}: $number"); // выводим число 1 и общее количество итераций
  print("Количество итераций: ${count+1}");
}


// 3)Через консоль вводится натуральное число. Сохраните все четные числа от 1 до введенного в один массив, и нечетные в другой.
import 'dart:io';

void main() {
  // Запрос ввода натурального числа с клавиатуры
  stdout.write('Введите натуральное число: ');
  int n = int.parse(stdin.readLineSync()!);

  List<int> evenNumbers = [];
  List<int> oddNumbers = [];

  // Заполнение массивов четными и нечетными числами
  for (int i = 1; i <= n; i++) {
    if (i % 2 == 0) {
      evenNumbers.add(i);
    } else {
      oddNumbers.add(i);
    }
  }

  // Вывод четных чисел
  print('Четные числа: ${evenNumbers}');

  // Вывод нечетных чисел
  print('Нечетные числа: ${oddNumbers}');
}


// 4)Число совершенно, если оно равно сумме всех своих делителей, кроме самого себя. Пример: 6 = 1 + 2 + 3. 
//  При вводе числа, ваш код должен определить совершенное ли это число или нет, и вывести на экран результат.
import 'dart:io';

void main() {
  print('Введите натуральное число:');
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i < n; i++) {
    if (n % i == 0) {
      sum += i;
    }
  }
  if (sum == n) {
    print('$n является совершенным числом');
  } else {
    print('$n не является совершенным числом');
  }
}



// 5)Вам нужно создать две футбольные команды с названиями Барселона и РеалМадрид. Для этого создайте два массива с соответствующими именами.
// Далее вам нужно знать, что в команде есть 1 вратарь, 4 защитника, 4 полузащитника и 2 нападающих. 
// Создав классы, заполните два массива футбольных команд игроками. Выведите на экран массивы с именами игроков.
class Player {
  final String name;

  Player(this.name);
}

class Goalkeeper extends Player {
  Goalkeeper(String name) : super(name);
}

class Defender extends Player {
  Defender(String name) : super(name);
}

class Midfielder extends Player {
  Midfielder(String name, List<List<String>> list) : super(name);
}

class Forward extends Player {
  Forward(String name) : super(name);
}

class FootballTeam {
  final String name;
  final List<Goalkeeper> goalkeepers = [];
  final List<Defender> defenders = [];
  final List<Midfielder> midfielders = [];
  final List<Forward> forwards = [];

  FootballTeam(this.name);

  void addGoalkeeper(Goalkeeper player) {
    goalkeepers.add(player);
  }

  void addDefender(Defender player) {
    defenders.add(player);
  }

  void addMidfielder(Midfielder player) {
    midfielders.add(player);
  }

  void addForward(Forward player) {
    forwards.add(player);
  }

  void printTeam() {
    print('$name team:');
    print('Goalkeepers: ${goalkeepers.map((player) => player.name).join(', ')}');
    print('Defenders: ${defenders.map((player) => player.name).join(', ')}');
    print('Midfielders: ${midfielders.map((player) => player.name).join(', ')}');
    print('Forwards: ${forwards.map((player) => player.name).join(', ')}');
  }
}

void main() {
  final barcelona = FootballTeam('Barcelona');
  barcelona.addGoalkeeper(Goalkeeper('Marc-Andre ter Stegen'));
  barcelona.addDefender(Defender('Gerard Pique'));
  barcelona.addDefender(Defender('Clement Lenglet'));
  barcelona.addDefender(Defender('Jordi Alba'));
  barcelona.addDefender(Defender('Sergi Roberto'));
  barcelona.addMidfielder(Midfielder('Sergio Busquets'));
  barcelona.addMidfielder(Midfielder('Frenkie de Jong'));
  barcelona.addMidfielder(Midfielder('Pedri'));
  barcelona.addMidfielder(Midfielder('Philippe Coutinho'));
  barcelona.addForward(Forward('Lionel Messi'));
  barcelona.addForward(Forward('Antoine Griezmann'));
  barcelona.printTeam();

  final realMadrid = FootballTeam('Real Madrid');
  realMadrid.addGoalkeeper(Goalkeeper('Thibaut Courtois'));
  realMadrid.addDefender(Defender('Sergio Ramos'));
  realMadrid.addDefender(Defender('Raphael Varane'));
  realMadrid.addDefender(Defender('Nacho Fernandez'));
  realMadrid.addDefender(Defender('Ferland Mendy'));
  realMadrid.addMidfielder(Midfielder('Toni Kroos'));
  var board;
  realMadrid.addMidfielder(Midfielder('



// 6)List<String> lineOne = ['  ', '  ', '  '];
// List<String> lineTwo = ['  ', '  ', '  '];
// List<String> lineThree = ['  ', '  ', '  '];
// Даны три одинаковых массива. Вам нужно будет написать код игры крестики-нолики.
// Код должен будет запрашивать ввод двух чисел,первое число - это какой массив, второе число - какой элемент массива.
// Первый игрок ставит 'X', второй 'O'. И так до победы, или до 9 ходов, после чего будет засчитана ничья.
List<List<String>> board = [
  ['  ', '  ', '  '],
  ['  ', '  ', '  '],
  ['  ', '  ', '  ']
];
String player = 'X';
int count = 0;
while (count < 9) {
  // выводим текущее состояние доски
  print(board[0]);
  print(board[1]);
  print(board[2]);
  
  // запрашиваем координаты от игрока
  print('Ходит игрок $player. Введите номер строки (от 1 до 3):');
  int row = int.parse(stdin.readLineSync()!);
  print('Введите номер столбца (от 1 до 3):');
  int col = int.parse(stdin.readLineSync()!);

  // ставим знак на доске и меняем игрока
  if (board[row - 1][col - 1] == '  ') {
    board[row - 1][col - 1] = ' $player';
    count++;
    if (player == 'X') {
      player = 'O';
    } else {
      player = 'X';
    }
  } else {
    print('Эта клетка уже занята. Попробуйте еще раз.');
  }

  // проверяем, есть ли победитель
  if ((board[0][0] == board[0][1] && board[0][1] == board[0][2] && board[0][0] != '  ') || // горизонталь 1
      (board[1][0] == board[1][1] && board[1][1] == board[1][2] && board[1][0] != '  ') || // горизонталь 2
      (board[2][0] == board[2][1] && board[2][1] == board[2][2] && board[2][0] != '  ') || // горизонталь 3
      (board[0][0] == board[1][0] && board[1][0] == board[2][0] && board[0][0] != '  ') || // вертикаль 1
      (board[0][1] == board[1][1] && board[1][1] == board[2][1] && board[0][1] != '  ') || // вертикаль 2
      (board[0][2] == board[1][2] && board[1][2];


