void main() {
  funcOne(10, 20);
  print(funcTwo(5));
}

//1. Составьте программу, выводящую на экран квадраты чисел от 10 до 20.
void funcOne(int a, int b) {
  for (int i = a; i <= b; i++) {
    print(i * i);
  }
}

//2. Составьте программу, котораЯ вычисляет сумму чисел от 1 до n.значение n вводится с клавиатуры
int funcTwo(int n) {
  int summ = 0;
  for (int i = 1; i <= n; i++) {
    summ += i;
    print(i);
  }
  return summ;
}

//3. В сберкассу на трёхпроцентный вклад положили S рублей.Какой станет сумма вклада через N лет.(Данные вводятся с клавиатуры)
double funcThree({required double s, required int n}) {
  for (int i = 1; i <= n; i++) {
    s += s * 0.03;
    print(s);
  }
  return s;
}

//4.Даны натуральные числа от 20 до 50.Напечатать те из них, которые делятся на 3, но не делятся на 5.
List<int> funcFour({required int k, required int q}) {
  List<int> result = [];
  for (int i = k; i <= q; i++) {
    if (i % 3 == 0 && i % 5 != 0) {
      result.add(i);
    }
  }
  return result;
}

//5.Даны натуральные числа от 1 до 50. Найти сумму тех из них, которые делятся на 5 или на 7.
int funcFive({required int y, required int z}) {
  int summ = 0;
  for (int i = y; i <= z; i++) {
    if (i % 5 == 0 || i % 7 == 0) {
      summ += i;
    }
  }
  return summ;
}

//6.Напечатать те из двузначных чисел которые делятся на 4, но не делятся на 6.
void funcSix() {
  for (int i = 10; i <= 90; i++) {
    if (i % 4 == 0 && i % 6 != 0) {
      print(i);
    }
  }
}

//7.Найти сумму чисел от 100 до 200 кратных 17.
int funcSeven({required int l, required int m}) {
  int summ = 0;
  for (int i = l; i <= m; i++) {
    summ += i * i;
    print(i);
  }
  return summ;
}

//8.Составьте программу, которая вычисляет сумму квадратов чисел от 1 до введенного вами целого числа N
int funcEight(int n) {
  int summ = 0;
  for (int i = 1; i <= n; i++) {
    summ += i * 1;
    print(i);
  }
  return summ;
}
