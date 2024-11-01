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

<<<<<<< Updated upstream
//dummy character data

List<Character> characters = [
  Character(id: '1', name: 'Kali', vocation: Vocation.wizard, slogan: 'Abracadabra'),
  Character(id: '2', name: 'John', vocation: Vocation.junkie, slogan: 'Light Up'),
  Character(id: '3', name: 'Angelina', vocation: Vocation.raider, slogan: 'Fire in the Hole'),
  Character(id: '4', name: 'Spencer', vocation: Vocation.ninja, slogan: 'Beep Boop'),

];
=======
//dummy data
List<Character> characters = [
  Character(
    id: "1",
    name: "Jezic",
    slogan: "Fire It Up",
    vocation: Vocation.junkie,
  ),
  Character(
    id: "2",
    name: "Nexus",
    slogan: "Fast and stealthy",
    vocation: Vocation.ninja,
  ),
  Character(
    id: "3",
    name: "Wylan",
    slogan: "Abracadabra",
    vocation: Vocation.wizard,
  ),
  Character(
    id: "4",
    name: "Rayna",
    slogan: "Lets Get Hyped",
    vocation: Vocation.raider,
  ),
];
>>>>>>> Stashed changes
