void main(List<String> arguments) {
  // task 1
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> c = [];

  for (int i = 0; i < b.length; i++) {
    if (a.contains(b[i])) {
      c.add(b[i]);
    }
  }
  print(c);
  print('-------------------');

  // task 2
  List<int> numbers = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> evenNumbers = [];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      evenNumbers.add(numbers[i]);
    }
  }
  print(evenNumbers);

  print('------------------------');

  // task 3
  void countLetter(String a, String b) {
    int count = 0;
    for (int i = 0; i < b.length; i++) {
      if (b[i] == a) {
        count += 1;
      }
    }
    print(count);
  }

  countLetter('c', 'Chamber of secrets');
}
