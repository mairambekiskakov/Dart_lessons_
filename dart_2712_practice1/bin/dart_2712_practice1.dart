
// 1)Дан массив List numbers = [-10, 54, 21, 98, -2, 15, -23, 100, -91, 5];
// Вам нужно отсортировать массив, заполненный случайными числами, по возрастанию. Для сортировки использовать метод «пузырька». 
// Вывести на экран массив в исходном и отсортированном виде.
// Сортировка методом пузырька заключается в том, что по массиву осуществляются множественные проходы. 
// На каждом проходе очередной элемент сравнивается со следующим за ним. 
// И если он больше (при сортировке по возрастанию), то элементы массива меняются местами.
 void main() {
  List<int> numbers = [-10, 54, 21, 98, -2, 15, -23, 100, -91, 5];
  print('Исходный массив: $numbers');

  // Сортировка методом пузырька
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = 0; j < numbers.length - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }

  print('Отсортированный массив: $numbers');
}

  
// 2) Дана строка String a = 'data 48 call 9231dadsad read13 blank0a';
// Найдите самое длиное слово и выведите его на экран.
 void main() {
  String a = 'data 48 call 9231dadsad read13 blank0a';
  List<String> words = a.split(' ');
  
  String longestWord = '';
  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }
  
  print('The longest word is: $longestWord');
}

  
// 3)Разработать программу, которая будет как "магически" шар выдавать случайный результат. 
//  К примеру, вы ей задаете вопрос: "..... . .. ... .. ?", а она выдает вам результат из предложенного:
// -Да
// -Нет
// -Скорее всего да
// -Скорее всего нет
// -Возможно
// -Имеются перспективы
// -Вопрос задан неверно
  import 'dart:math';

void main() {
  List<String> answers = [
    'Да',
    'Нет',
    'Скорее всего да',
    'Скорее всего нет',
    'Возможно',
    'Имеются перспективы',
    'Вопрос задан неверно'
  ];

  // Запрос вопроса у пользователя
  String question = '...';

  // Генерация случайного индекса ответа
  int randomIndex = Random().nextInt(answers.length);

  // Вывод ответа на экран
  print(answers[randomIndex]);
}

  
// 4) Создайте классы Рядовой,Ефрейтор,Прапорщик,Старший прапорщик,Капитан,Генерал. 
// Рандомно заполните массив этими классами количеством 100 экземпляров.
// Затем создайте 3 разных массива: Солдаты, Прапорщики и Офицеры, и рассортируйте все по трем массивам.
   4) Создайте классы Рядовой,Ефрейтор,Прапорщик,Старший прапорщик,Капитан,Генерал. 
// Рандомно заполните массив этими классами количеством 100 экземпляров.
// Затем создайте 3 разных массива: Солдаты, Прапорщики и Офицеры, и рассортируйте все по трем массивам.
  
  
// 5) Нужно создать 3 класс: Баран, Корова и Лошадь.
// Каждый класс имеет такие параметры, как цена и получаемое мясо. Допустим, что баран дает 20 кг мяса и стоит 15 тыс. сомов, лошадь дает 100 кг мяса и стоит 100 тыс. сомов, корова 150 кг и стоит 150 тыс. сомов.
// Программа должна выдавать случайное число, которое будет равняться количеству голов скота.Заполните массив случайным образом всеми тремя классами.
// Выведите на экран общее количество скота, сколько баранов, коров и лошадей, общий вес и цену.
import 'dart:math';

class Animal {
  String name;
  int price;
  int meatWeight;

  Animal({required this.name, required this.price, required this.meatWeight});

  String toString() => "$name (price: $price, meat weight: $meatWeight kg)";
}

void main() {
  final Random random = Random();

  final Animal sheep = Animal(name: "Sheep", price: 15000, meatWeight: 20);
  final Animal horse = Animal(name: "Horse", price: 100000, meatWeight: 100);
  final Animal cow = Animal(name: "Cow", price: 150000, meatWeight: 150);

  final List<Animal> animals = [];

  // Generate a random number between 1 and 100 for the number of animals
  final int numAnimals = random.nextInt(100) + 1;

  // Populate the animals list with random animals
  for (int i = 0; i < numAnimals; i++) {
    int animalType = random.nextInt(3);
    switch (animalType) {
      case 0:
        animals.add(sheep);
        break;
      case 1:
        animals.add(horse);
        break;
      case 2:
        animals.add(cow);
        break;
    }
  }

  // Count the number of animals of each type
  int numSheep = animals.where((a) => a == sheep).length;
  int numHorses = animals.where((a) => a == horse).length;
  int numCows = animals.where((a) => a == cow).length;

  // Calculate total meat weight and price
  int totalMeatWeight = 0;
  int totalPrice = 0;
  for (Animal animal in animals) {
    totalMeatWeight += animal.meatWeight;
    totalPrice += animal.price;
  }

  // Output the results
  print("Total animals: $numAnimals");
  print("Sheep: $numSheep");
  print("Horses: $numHorses");
  print("Cows: $numCows");
  print("Total meat weight: $totalMeatWeight kg");
  print("Total price: $totalPrice soms");
}


