mixin Stats {
  int _health = 10;
  int _attack = 10;
  int _defense = 10;
  int _skill = 10;
  int _points = 10;

  void increaseStat(String stat) {
    if (_points > 0) {
      if (stat == "health") {
        _health++;
      } else if (stat == "attack") {
        _attack++;
      } else if (stat == "defense") {
        _defense++;
      } else if (stat == "skill") {
        _skill++;
      }
    }
  }

  void decreaseStat(String stat) {
    if (_points > 0) {
      if (stat == "health" && _health > 5) {
        _health--;
        _points++;
      } else if (stat == "attack" && _attack > 5) {
        _attack--;
        _points++;
      } else if (stat == "defense" && _defense > 5) {
        _defense--;
        _points++;
      } else if (stat == "skill" && _skill > 5) {
        _skill--;
        _points++;
      }
    }
  }
}
