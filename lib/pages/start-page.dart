import 'package:dads_phone_app/classes/gameState.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {

  final Function startGameHandler;

  StartPage({this.startGameHandler});

  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
  double height = 200;
  double width = 200;
  double borderRadius = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Card Game"),
        ),
      ),
      body: Center(
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Material(
              elevation: 5.0,
              color: Colors.blue,
              borderRadius: BorderRadius.circular(borderRadius),
              child: InkWell(
                  borderRadius: BorderRadius.circular(borderRadius),
                  child: Container(
                    child: Center(
                      child: Text(
                        "Start Game",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    width: width,
                    height: height,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/add-players');
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
