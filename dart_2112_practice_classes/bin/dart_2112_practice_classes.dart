// 1)Напишите программу для создания класса Vehicle(транспорт) с атрибутами экземпляра maxSpeed(макс. скорость),
// mileAge(пробег) и максимальное кол-во посадочных мест seatingCapacity.
class Vehicle {
  int maxSpeed;
  int mileAge;
  int seatingCapacity;

  Vehicle(this.maxSpeed, this.mileAge, this.seatingCapacity);
}

void main() {
  Vehicle car = Vehicle(200, 50000, 5);
  Vehicle bike = Vehicle(120, 20000, 2);

  print('Характеристики автомобиля:');
  print('Максимальная скорость: ${car.maxSpeed} км/ч');
  print('Пробег: ${car.mileAge} км');
  print('Количество посадочных мест: ${car.seatingCapacity}');

  print('');

  print('Характеристики мотоцикла:');
  print('Максимальная скорость: ${bike.maxSpeed} км/ч');
  print('Пробег: ${bike.mileAge} км');
  print('Количество посадочных мест: ${bike.seatingCapacity}');
}

// 2)Создайте дочерний класс Scooter, который унаследует все переменные и методы класса Vehicle.
class Scooter extends Vehicle {
  Scooter(int maxSpeed, int mileAge, int seatingCapacity)
      : super(maxSpeed, mileAge, seatingCapacity);

  void rideScooter() {
    print('Я катаюсь на скутере');
  }
}

void main() {
  Scooter scooter = Scooter(80, 10000, 1);

  print('Характеристики скутера:');
  print('Максимальная скорость: ${scooter.maxSpeed} км/ч');
  print('Пробег: ${scooter.mileAge} км');
  print('Количество посадочных мест: ${scooter.seatingCapacity}');

  print('');

  scooter.rideScooter();
}

// 3)Создайте класс Bus, который наследуется от класса Vehicle. Максимальное кол-во мест установите значение по умолчанию 50.
class Bus extends Vehicle {
  Bus(int maxSpeed, int mileAge, [int seatingCapacity = 50])
      : super(maxSpeed, mileAge, seatingCapacity);
}

void main() {
  Bus bus = Bus(100, 50000);

  print('Характеристики автобуса:');
  print('Максимальная скорость: ${bus.maxSpeed} км/ч');
  print('Пробег: ${bus.mileAge} км');
  print('Количество посадочных мест: ${bus.seatingCapacity}');

  print('');

  Bus bigBus = Bus(90, 60000, 80);

  print('Характеристики большого автобуса:');
  print('Максимальная скорость: ${bigBus.maxSpeed} км/ч');
  print('Пробег: ${bigBus.mileAge} км');
  print('Количество посадочных мест: ${bigBus.seatingCapacity}');
}

// 4)Определите атрибут класса «цвет» со значением по умолчанию белого цвета.
// То есть, каждое транспортное средство должно быть белым.
class Vehicle {
  int maxSpeed;
  int mileAge;
  int seatingCapacity;
  String color;

  Vehicle(this.maxSpeed, this.mileAge, this.seatingCapacity,
      [this.color = 'белый']);
}

void main() {
  Vehicle car = Vehicle(200, 10000, 4);

  print('Характеристики автомобиля:');
  print('Максимальная скорость: ${car.maxSpeed} км/ч');
  print('Пробег: ${car.mileAge} км');
  print('Количество посадочных мест: ${car.seatingCapacity}');
  print('Цвет: ${car.color}');
}

// 5)Создайте дочерний класс miniBus, который наследуется от класса Vehicle.
//   Плата за проезд по умолчанию для любого транспортного средства равна вместимости * 100.
//   Кол-во сидений 20.Нам нужно добавить дополнительные 10% к полной стоимости проезда в качестве платы за обслуживание.
//   Таким образом, общая стоимость проезда для экземпляра микроавтобуса станет
//   окончательной суммой = общая стоимость проезда + 10% от общей стоимости проезда.
class MiniBus extends Vehicle {
  int MiniBusCapacity = 20;
  double fare;

  MiniBus(int maxSpeed, int mileAge, {required double fare})
      : super(maxSpeed, mileAge, 20) {
    this.fare = fare ?? MiniBusCapacity * 100;
  }

  double getTotalFare() {
    return fare + fare * 0.1;
  }
}

void main() {
  MiniBus bus = MiniBus(80, 5000);
  print('Характеристики микроавтобуса:');
  print('Максимальная скорость: ${bus.maxSpeed} км/ч');
  print('Пробег: ${bus.mileAge} км');
  print('Количество посадочных мест: ${bus.MiniBusCapacity}');
  print('Плата за проезд: ${bus.fare} руб.');
  print('Общая стоимость проезда: ${bus.getTotalFare()} руб.');
}

class Person {
  String name;

  Person(this.name);
}

class Student extends Person {
  Student(String name) : super(name);

  void study() {
    print('$name учится');
  }
}

class Teacher extends Person {
  Teacher(String name) : super(name);

  void explain() {
    print('$name объясняет');
  }
}

void main() {
  var people = [];

  for (var i = 0; i < 3; i++) {
    print('Введите имя человека:');
    var name = stdin.readLineSync();
    if (i < 2) {
      people.add(Student(name!));
    } else {
      people.add(Teacher(name!));
    }
  }

  for (var person in people) {
    print('Имя: ${person.name}');
    if (person is Student) {
      person.study();
    } else if (person is Teacher) {
      person.explain();
    }
  }
}

// 6)Напишите код, который запрашивает у пользователя три имени людей и сохраняет их в массиве объектов типа Person.
//  Будет два человека типа «Студент» и один человек типа «Учитель».
// Для этого создайте класс Person,
// имеющий свойство Name типа String, конструктор, получающий имя в качестве параметра.
// Затем создайте еще два класса, которые унаследованы от класса Person,
// они будут называться Student и Teacher. У класса Student есть метод Study,
// который пишет через консоль, что студент учится. Класс «Учитель» будет иметь метод «Объяснение»,
// который записывает в консоль, что учитель объясняет.
// Завершите программу выводом в консоль параметров людей (учителя и учеников) и выполните методы «Объяснить» и «Изучить».

class Person {
  String name;

  Person(this.name);
}

class Student extends Person {
  Student(String name) : super(name);

  void study() {
    print('$name учится');
  }
}

class Teacher extends Person {
  Teacher(String name) : super(name);

  void explain() {
    print('$name объясняет');
  }
}

void main() {
  var people = [];

  for (var i = 0; i < 3; i++) {
    print('Введите имя человека:');
    var name = stdin.readLineSync();
    if (i < 2) {
      people.add(Student(name));
    } else {
      people.add(Teacher(name));
    }
  }

  for (var person in people) {
    print('Имя: ${person.name}');
    if (person is Student) {
      person.study();
    } else if (person is Teacher) {
      person.explain();
    }
  }
}
