import 'package:dads_phone_app/classes/gameState.dart';
import 'package:dads_phone_app/classes/player.dart';
import 'package:dads_phone_app/widgets/set-trumps-widget.dart';
import 'package:dads_phone_app/widgets/trump-circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTrumpPage extends StatefulWidget {
  AddTrumpPage({this.gameState});

  final GameState gameState;

  @override
  AddTrumpPageState createState() => AddTrumpPageState();
}

class AddTrumpPageState extends State<AddTrumpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Round 1 - Set Trumps"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TrumpCircle(
                    //Todo create a input class
                    suit: Suits.Diamond,
                    number: 7,
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SetTrumpsWidget(
                          players: widget.gameState.players,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Play Round'),
        icon: Icon(Icons.play_arrow),
      ),
    );
  }
}
