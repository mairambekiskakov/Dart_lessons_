// 1) Country -  класс имеет поле название, климат (метод должен принтовать название места и климат)
class Country {
  String name;
  String climate;

  Country(this.name, this.climate);

  void printClimate() {
    print('$name: $climate');
  }
}

void main() {
  Country russia = Country('Russia', 'Continental');
  Country spain = Country('Spain', 'Mediterranean');

  russia.printClimate();
  spain.printClimate();
}

// 2) Car -  имеет поле мощность, цвет, название, цена (метод должен принтовать характеристики машины)
class Car {
  int power;
  String color;
  String name;
  double price;

  Car(this.power, this.color, this.name, this.price);

  void printCarInfo() {
    print('Мощность: $power л.с.');
    print('Цвет: $color');
    print('Название: $name');
    print('Цена: $price руб.');
  }
}

// Пример использования класса
void main() {
  Car car = Car(150, 'красный', 'BMW X5', 100000.0);
  car.printCarInfo();
}

//Класс Phone.
class Phone {
  String number;
  String model;
  double weight;

  Phone(this.number, this.model, this.weight);

  void receiveCall(String callerName) {
    print('Звонит $callerName');
  }

  String getNumber() {
    return number;
  }

  void sendMessage(List<String> numbers) {
    print('Отправить сообщение на номера: ${numbers.join(", ")}');
  }
}

void main() {
  Phone phone1 = Phone('123-45-67', 'Nokia', 0.2);
  Phone phone2 = Phone('987-65-43', 'Samsung', 0.3);
  Phone phone3 = Phone('555-55-55', 'iPhone', 0.4);

  print('Телефон 1: ${phone1.number}, ${phone1.model}, ${phone1.weight}');
  print('Телефон 2: ${phone2.number}, ${phone2.model}, ${phone2.weight}');
  print('Телефон 3: ${phone3.number}, ${phone3.model}, ${phone3.weight}');

  phone1.receiveCall('Александр');
  phone2.receiveCall('Екатерина');
  phone3.receiveCall('Иван');

  print('Номер телефона 1: ${phone1.getNumber()}');
  print('Номер телефона 2: ${phone2.getNumber()}');
  print('Номер телефона 3: ${phone3.getNumber()}');

  phone1.sendMessage(['123-45-67', '555-55-55']);
}

//Читатели библиотеки
class Reader {
  String name;
  String libraryCardNumber;
  String faculty;
  String dateOfBirth;
  String phone;

  Reader(this.name, this.libraryCardNumber, this.faculty, this.dateOfBirth,
      this.phone);

  void takeBook(int count) {
    print('$name взял $count книги');
  }

  void takeBookByTitle(List<String> titles) {
    print('$name взял книги: ${titles.join(', ')}');
  }

  void takeBookByObject(List<Book> books) {
    var titles =
        books.map((book) => '${book.title} (${book.author})').join(', ');
    print('$name взял книги: $titles');
  }

  void returnBook(int count) {
    print('$name вернул $count книги');
  }

  void returnBookByTitle(List<String> titles) {
    print('$name вернул книги: ${titles.join(', ')}');
  }

  void returnBookByObject(List<Book> books) {
    var titles =
        books.map((book) => '${book.title} (${book.author})').join(', ');
    print('$name вернул книги: $titles');
  }
}

class Book {
  String title;
  String author;

  Book(this.title, this.author);
}

void main() {
  var readers = [
    Reader('Иванов И. И.', '123', 'ИТ', '01.01.1990', '+7 (123) 456-78-90'),
    Reader('Петров П. П.', '456', 'Физика', '02.02.1991', '+7 (456) 789-01-23'),
    Reader('Сидоров С. С.', '789', 'Химия', '03.03.1992', '+7 (789) 012-34-56')
  ];

  var books = [
    Book('Приключения', 'Иванов А. А.'),
    Book('Словарь', 'Петров В. В.'),
    Book('Энциклопедия', 'Сидоров С. С.')
  ];

  for (var reader in readers) {
    reader.takeBook(3);
    reader.takeBookByTitle(['Приключения', 'Словарь', 'Энциклопедия']);
    reader.takeBookByObject(books);

    reader.returnBook(3);
    reader.returnBookByTitle(['Приключения', 'Словарь', 'Энциклопедия']);
    reader.returnBookByObject(books);
  }
}
