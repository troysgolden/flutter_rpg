import 'package:flutter/material.dart';
import 'package:flutter_rpg/Screens/home/home.dart';
import 'package:flutter_rpg/theme.dart';

///fluter create flutter rpg <--this created the project
///////  code . ///// opens it up in the editor

void main() {
  runApp(MaterialApp(
    home: const Home(),
    theme: primaryTheme,
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Text('Sandbox'),
      ),
    );
  }
}
