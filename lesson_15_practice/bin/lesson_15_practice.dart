import 'dart:math';

void main() {
  print(getDartScore(10, 1));
  print(getAcronym('Portable Network Graphics'));
  print(getAcronym('Hyper Text Markup Language'));
}

int getDartScore(double x, double y) {
  double distance = sqrt(x * x + y * y);

  if (distance > 10) {
    return 0;
  } else if (distance > 5) {
    return 1;
  } else if (distance > 1) {
    return 5;
  } else {
    return 10;
  }
}

String getAcronym(String phrase) {
  List<String> words = phrase.split(' ');
  List<String> acronym = words.map((word) => word[0]).toList();
  return acronym.join('').toUpperCase();
}
