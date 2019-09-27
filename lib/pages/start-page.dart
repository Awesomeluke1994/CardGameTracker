import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  Function startGameHandler;

  StartPage(startGameHandler) {
    this.startGameHandler = startGameHandler;
  }

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
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(180)),
              color: Colors.blue,
              child: Text(
                'New Game',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed: startGameHandler,
            ),
          ],
        ),
      ),
    );
  }
}
