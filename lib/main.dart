import 'package:dads_phone_app/pages/add-players.dart';
import 'package:dads_phone_app/pages/start-page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyGamePage(),
    );
  }
}

class MyGamePage extends StatefulWidget {

  @override
  MyGamePageState createState() => MyGamePageState();
}

class MyGamePageState extends State<MyGamePage> {

  final int maxPlayers = 7;
  bool gameStarted = false;
  var players = [
    new Player(),
  ];

  void newGame() {
    setState(() {
      gameStarted = true;
    });
  }

  void setName(index, text) {
    setState(() {
      players[index].firstName = text;
    });
  }

  void addNewPlayer() {
    if(players.length < maxPlayers) {
      setState(() {
        players.add(new Player());
      });
    }
  }

  void startGame() {
    print(players.length);
  }

  @override
  Widget build(BuildContext context) {
      if(this.gameStarted == false) {
        return StartPage(newGame);
      } else {
        return AddPlayers(
          setNameHandler: setName,
          players: players,
          startGameHandler: startGame,
          addPlayersHander: addNewPlayer,
        );
      }
    }
  }

  class Player {
    String firstName;
  }
