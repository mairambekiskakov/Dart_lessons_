import 'dart:io';
import 'dart:math';

void main() {
  List<String> suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades'];
  List<Card> deck = [];
  for (int i = 0; i < 4; i++) {
    deck.add(
      Ace(name: 'Ace', value: 11, suit: suits[i]),
    );
  }
  for (int i = 0; i < 4; i++) {
    deck.add(
      King(name: 'King', value: 10, suit: suits[i]),
    );
  }
  for (int i = 0; i < 4; i++) {
    deck.add(
      Queen(name: 'Queen', value: 10, suit: suits[i]),
    );
  }
  for (int i = 0; i < 4; i++) {
    deck.add(
      Jack(name: 'Jack', value: 10, suit: suits[i]),
    );
  }
  for (int j = 0; j < 4; j++) {
    for (int i = 6; i < 11; i++) {
      deck.add(NumberCard(name: 'Card #$i', value: i, suit: suits[j]));
    }
  }

  print('Player begins first, if you are ready type yes');
  String answer = stdin.readLineSync()!;
  int r1 = Random().nextInt(36 - 0);
  int r2 = Random().nextInt(36 - 0);
  print('${deck[r1].name}${deck[r1].suit}');
  print('${deck[r2].name}${deck[r2].suit}');
  print('Computers score is ${deck[r1].value + deck[r2].value}');
}

class Card {
  String name;
  String suit;
  int value;
  Card({required this.name, required this.suit, required this.value});
}

class Ace extends Card {
  Ace({required String name, required int value, required String suit})
      : super(name: name, value: value, suit: suit);
}

class King extends Card {
  King({required String name, required int value, required String suit})
      : super(name: name, value: value, suit: suit);
}

class Queen extends Card {
  Queen({required String name, required int value, required String suit})
      : super(name: name, value: value, suit: suit);
}

class Jack extends Card {
  Jack({required String name, required int value, required String suit})
      : super(name: name, value: value, suit: suit);
}

class NumberCard extends Card {
  NumberCard({required String name, required int value, required String suit})
      : super(name: name, value: value, suit: suit);
}
