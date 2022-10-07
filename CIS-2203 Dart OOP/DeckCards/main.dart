import 'models/Card.dart';
import 'models/Deck.dart';

void main() {
  List<Card> cards = <Card>[];
  Deck deck = Deck(cards);
  deck.makeDeck();

  deck.printCards();
  deck.shuffle();

  deck.cardsWithSuit('Diamonds');
}
