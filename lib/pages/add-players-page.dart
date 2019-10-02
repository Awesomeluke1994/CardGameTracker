import 'package:dads_phone_app/classes/player.dart';
import 'package:dads_phone_app/widgets/new-player-widget.dart';
import 'package:flutter/material.dart';

class AddPlayers extends StatefulWidget {

  final List<Player> players;

  AddPlayers({this.players});

  @override
  AddPlayersState createState() => AddPlayersState();
}

class AddPlayersState extends State<AddPlayers> {

  void addPlayer() {
    setState(() {
      widget.players.add(new Player());
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
                  child: NewPlayerWidget(players: widget.players)
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
              RaisedButton(
                child: Text(
                  "Start game",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: null,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
