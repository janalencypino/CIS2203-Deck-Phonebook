import 'Card.dart';

class Deck {
  List<Card> cards = <Card>[];
  var ranks = [
    'Ace',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Jack',
    'King',
    'Queen',
  ];
  var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

  Deck(this.cards);

  void makeDeck() {
    for (var s in this.suits) {
      for (var r in this.ranks) {
        var new_card = new Card(r, s);
        this.cards.add(new_card);
      }
    }
  }

  String toString() {
    return this.cards.toString();
  }

  void _view_card(var card) {
    print(card);
  }

  void printCards() {
    for (var c in this.cards) {
      _view_card(c);
    }
  }

  void cardsWithSuit(String suit) {
    var find = this.cards.where((c) => c.suit == suit);
    _view_card(find);
  }

  void shuffle() {
    this.cards.shuffle();
  }
}
