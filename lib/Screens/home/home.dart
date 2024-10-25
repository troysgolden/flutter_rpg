import 'package:flutter/material.dart';
import 'package:flutter_rpg/screens/home/character_card.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List characters = [
    'mario',
    'luigi',
    'peach',
    'yoshi',
    'toad',
    'daisy',
    'peach',
    'bowser',
    'koopa',
    'wario',
    'donkey kong'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledHeading('Your Characters'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: characters.length,
              itemBuilder: (_, index) {
                return CharacterCard(characters[index]);
              },
            ),
          ),
          StyledButton(
            onPressed: () {},
            child: const StyledHeading('Create New'),
          ),
        ],
      ),
    );
  }
}
