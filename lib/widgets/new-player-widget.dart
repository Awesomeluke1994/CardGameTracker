import 'package:dads_phone_app/classes/player.dart';
import'package:dads_phone_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPlayerWidget extends StatefulWidget {
  NewPlayerWidget({this.players});

  final List<Player> players;

  @override
  NewPlayerWidgetState createState() => NewPlayerWidgetState();
}

class NewPlayerWidgetState extends State<NewPlayerWidget> {
  void setPlayersName(int index, String text) {
    widget.players[index].setFirstName(text);
  }

  void deletePlayer(int index) {
    if (widget.players.length > 1) {
      setState(() {
        widget.players.removeAt(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<TextEditingController> textEditingControllers = [];
    widget.players.forEach((player) {
      TextEditingController textEditingController =
      new TextEditingController(text: player.name);
      textEditingControllers.add(textEditingController);
    });

    return Column(
      children: List.generate(
        widget.players.length,
            (index) =>
            Padding(
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
                        controller: textEditingControllers[index],
                        onChanged: (text) {
                          setPlayersName(index, text);
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
                        deletePlayer(index);
                      },
                    ),
                  )
                ],
              ),
            ),
      ),
    );
  }
}

//
