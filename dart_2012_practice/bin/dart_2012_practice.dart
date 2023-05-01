import 'dart:io';

// 1)Сформировать из введенного числа обратное по порядку входящих в него цифр и вывести на экран.
// Например, если введено число 3486, то надо вывести число 6843.

void main() {
  print('Введите число:');
  var number = int.parse(stdin.readLineSync()!);

  var reversed = 0;
  while (number > 0) {
    var digit = number % 10;
    reversed = reversed * 10 + digit;
    number ~/= 10;
  }

  print('Обратное число: $reversed');
}


// 2)С клавиатуры вводится натуральное число. Найти его наибольшую цифру.
// Например, введено число 764580. Наибольшая цифра в нем 8.


// void main() {
//   print('Введите натуральное число:');
//   var number = int.parse(stdin.readLineSync()!);
//   var maxDigit = 0;
//   while (number > 0) {
//     var digit = number % 10;
//     if (digit > maxDigit) {
//       maxDigit = digit;
//     }
//     number ~/= 10;
//   }
//   print('Наибольшая цифра в числе: $maxDigit');
// }




// 3)Найти сумму n элементов следующего ряда чисел:
// 1 -0.5 0.25 -0.125 … // Количество элементов (n) вводится с клавиатуры.


// void main() {
//   print('Введите количество элементов: ');
//   var n = int.parse(stdin.readLineSync()!);

//   var sum = 0.0;
//   var sign = 1.0;
//   var term = 1.0;

//   for (var i = 1; i <= n; i++) {
//     sum += sign * term;
//     sign = -sign;
//     term /= 2;
//   }

//   print('Сумма первых $n элементов ряда: $sum');
// }





// 4)Вывести на экран столько элементов ряда Фибоначчи, сколько указал пользователь. 
//Например, если на ввод поступило число 6, то вывод должен содержать шесть первых чисел ряда Фибоначчи: 1 2 3 5 8 13.
 

// void main() {
//   print('Введите количество элементов для вывода: ');
//   var n = int.parse(stdin.readLineSync()!);

//   var a = 0;
//   var b = 1;
//   var sum = 0;
//   for (var i = 0; i < n; i++) {
//     stdout.write('$sum ');
//     a = b;
//     b = sum;
//     sum = a + b;
//   }
// }

