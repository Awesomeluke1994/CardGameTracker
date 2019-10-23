import 'package:dads_phone_app/classes/gameState.dart';
import 'package:dads_phone_app/classes/player.dart';
import 'package:dads_phone_app/widgets/new-player-widget.dart';
import 'package:flutter/material.dart';

class AddPlayers extends StatefulWidget {

  final GameState gameState;
  final Function pageHandler;

  AddPlayers({this.gameState, this.pageHandler});

  @override
  AddPlayersState createState() => AddPlayersState();
}

class AddPlayersState extends State<AddPlayers> {

  void addPlayer() {
    setState(() {
      widget.gameState.addPlayer();
    });
  }

  void goToTrumpPage() {
    setState(() {
      widget.gameState.setGameState(gameStates.addTrumpsGuessed);
    });
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
                  child: NewPlayerWidget(players: widget.gameState.players)
              ),
              MaterialButton(
                minWidth: 40,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: addPlayer,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Start Game'),
        icon: Icon(Icons.play_arrow),
        onPressed: () {
          Navigator.pushNamed(context, '/add-trumps');
        },
      ),
    );
  }
}
