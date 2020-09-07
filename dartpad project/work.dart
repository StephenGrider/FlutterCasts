void main() {
  var deck = new Deck();

  // to get each card in deck(rank & suit).
  // print(deck);

  // for Shuffel.
  //  deck.shuffel();

  // to get the cards of particular suit.
  //  print(deck.cardsWithSuit('Diamonds'));

  // for having the deal
  //  print(deck);
  //  print(deck.deal(5));
  //  print(deck);

  deck.removeCard('Ace', 'Diamonds');
  print(deck);
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    // Named parameter is use to not to remember the correct order of sequences
    for (var mySuit in suits) {
      for (var rank in ranks) {
        var card = new Card(
            suit: mySuit,
            rank: rank); // now we go to our Card class constructor
        cards.add(card);
      }
    }

    // for (var suit in suits) {
    //  for (var rank in ranks) {
    //    var card = new Card(rank, suit);
    //    cards.add(card);
    //  }
    // }
  }
  toString() {
    return cards.toString();
  }

  shuffel() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSized) {
    var hand = cards.sublist(0, handSized);
    cards = cards.sublist(handSized);

    return hand;
  }

  removeCard(String rank, String suit) {
    return cards
        .removeWhere((card) => (card.rank == rank) && (card.suit == suit));

    //or
    // removeCard(String rank, String suit){

    //  return cards.removeWhere((card) {

    //    return (card.rank == rank) && (card.suit == suit);
    //  }  );
  }
}

class Card {
  String suit;
  String rank;

  // before name parameter
  // Card(this.rank, this.suit);

  // after name parameter
  Card({this.rank, this.suit});

  toString() {
    return '$rank of $suit';
  }
}
