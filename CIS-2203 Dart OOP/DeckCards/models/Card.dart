class Card {
  String rank;
  String suit;
  Card(this.rank, this.suit) {}
  String toString() {
    return '$rank of $suit';
  }
}
