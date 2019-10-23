import 'package:dads_phone_app/classes/player.dart';

class GameState {
  final List<Player> players = [new Player()];
  gameStates gameState = gameStates.startGame;

  setGameState(gameStates gameState) {
    this.gameState = gameState;
  }

  addPlayer() {
    if (this.players.length < 7) {
      this.players.add(new Player());
    }
  }

  removePlayer(int index) {
    this.players.removeAt(index);
  }
}

enum gameStates { startGame, addPayers, addTrumpsGuessed, addTrumpsObtained }
