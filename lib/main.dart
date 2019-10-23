import 'package:dads_phone_app/classes/gameState.dart';
import 'package:dads_phone_app/pages/add-players-page.dart';
import 'package:dads_phone_app/pages/start-page.dart';
import 'package:flutter/material.dart';

import 'classes/player.dart';
import 'pages/add-trump-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final GameState gameState = GameState();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(),
        '/add-players': (context) => AddPlayers(gameState: this.gameState),
        '/add-trumps': (context) => AddTrumpPage(gameState: this.gameState),
      },
    );
  }
}
