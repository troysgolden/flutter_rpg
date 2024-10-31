import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats {
  // constructor
  Character({
    required this.name,
    required this.slogan,
    required this.vocation,
    required this.id,
  });

  // fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  // getters
  get isFav => _isFav;

  // methods
  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkills(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

//dummy character data

List<Character> characters = [
  Character(id: '1', name: 'Kali', vocation: Vocation.wizard, slogan: 'Abracadabra'),
  Character(id: '2', name: 'John', vocation: Vocation.junkie, slogan: 'Light Up'),
  Character(id: '3', name: 'Angelina', vocation: Vocation.raider, slogan: 'Fire in the Hole'),
  Character(id: '4', name: 'Spencer', vocation: Vocation.ninja, slogan: 'Beep Boop'),

];