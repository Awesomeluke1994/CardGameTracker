import 'package:dads_phone_app/classes/player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetTrumpsWidget extends StatefulWidget {
  SetTrumpsWidget({this.players});

  final List<Player> players;

  @override
  SetTrumpsWidgetState createState() => SetTrumpsWidgetState();
}

class SetTrumpsWidgetState extends State<SetTrumpsWidget> {
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
        (index) => Container(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Row(
            children: <Widget>[
              Container(
                width: 100,
                child: Text(
                  '${widget.players[index].getName()}:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
