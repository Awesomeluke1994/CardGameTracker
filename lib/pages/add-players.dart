import 'package:flutter/material.dart';

class AddPlayers extends StatelessWidget {
  Function setNameHandler;
  Function addPlayersHandler;
  Function startGameHandler;
  Function deletePlayerHandler;
  var players;

  AddPlayers({
    setNameHandler,
    players,
    addPlayersHandler,
    startGameHandler,
    deletePlayerHandler,
  }) {
    this.setNameHandler = setNameHandler;
    this.players = players;
    this.addPlayersHandler = addPlayersHandler;
    this.startGameHandler = startGameHandler;
    this.deletePlayerHandler = deletePlayerHandler;
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    players.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "player " + (index + 1).toString(),
                                ),
                                onChanged: (text) {
                                  setNameHandler(index, text);
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: MaterialButton(
                              height: 40,
                              minWidth: 30,
                              color: Colors.white,
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                deletePlayerHandler(index);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
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

//children: List.generate(
//players.length,
//(index) => Padding(
//padding: EdgeInsets.only(bottom: 10),
//child: Row(
//children: <Widget>[
//Container(
//child: Expanded(
//child: TextField(
//decoration: InputDecoration(
//border: OutlineInputBorder(),
//labelText: "player " + (index + 1).toString(),
//),
//onChanged: (text) {
//setNameHandler(index, text);
//},
//),
//),
//),
//Padding(
//padding: EdgeInsets.only(left: 10),
//child: MaterialButton(
//height: 40,
//minWidth: 30,
//color: Colors.white,
//child: Icon(
//Icons.delete,
//color: Colors.red,
//),
//onPressed: () {
//deletePlayerHandler(index);
//},
//),
//)
//],
//),
//),
//),
