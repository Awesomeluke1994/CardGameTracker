import 'package:flutter/material.dart';

class TrumpCircle extends StatelessWidget {
  int number;
  Suit suit;

  TrumpCircle({this.number, this.suit});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(180),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(180)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 45, color: Colors.blue),
              ),
              Text(
                suit.value,
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Suits {
  static const Suit Diamond = Suit("♦️");
  static const Suit Clubs = Suit("♣️");
  static const Suit Hearts = Suit("♥️");
  static const Suit Spades = Suit("♠️");
}

class Suit {
  final String value;

  const Suit(String value) : value = value;
}
