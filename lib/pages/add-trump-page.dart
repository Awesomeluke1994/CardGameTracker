import 'package:dads_phone_app/widgets/trump-circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTrumpPage extends StatefulWidget {
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
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: TrumpCircle(
                    //Todo create a input class
                    suit: Suits.Diamond,
                    number: 7,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
