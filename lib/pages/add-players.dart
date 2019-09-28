import 'package:dads_phone_app/widgets/new-player-widget.dart';
import 'package:flutter/material.dart';

class AddPlayers extends StatelessWidget {
  Function setNameHandler;
  Function addPlayersHandler;
  Function startGameHandler;
  var players;

  AddPlayers({
    setNameHandler,
    players,
    startGameHandler,
    addPlayersHander,
  }) {
    this.setNameHandler = setNameHandler;
    this.players = players;
    this.startGameHandler = startGameHandler;
    this.addPlayersHandler = addPlayersHander;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Players"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Max 7 players"),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: NewPlayerWidget(players: players)
              ),
              MaterialButton(
                minWidth: 40,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: addPlayersHandler,
                color: Colors.blue,
              ),
              RaisedButton(
                child: Text(
                  "Start game",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: startGameHandler,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
