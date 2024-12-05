import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';

class CharacterStore extends ChangeNotifier {
  final List<Character> _characters = [
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
      name: "Raynal",
      slogan: "Lets Get Hyped",
      vocation: Vocation.raider,
    ),
  ];
  get characters => _characters;

//add character
  void addCharacter(Character character) {
    _characters.add(character);
    notifyListeners();
  }

//save (update) character

//remove/delete character

//initially fetch  characters
}
