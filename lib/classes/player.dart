class Player {
  String name;
  int score;
  int trumpsGuessed;

  setFirstName(String name) {
    this.name = name;
  }

  getName() {
    return this.name;
  }

  setScore(int score) {
    this.score = score;
  }

  setTrumpsGuessed(int trumpGuessed) {
    this.trumpsGuessed = trumpGuessed;
  }
}
