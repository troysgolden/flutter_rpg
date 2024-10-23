import 'package:flutter/material.dart';
import 'package:flutter_rpg/Screens/home/home.dart';
import 'package:flutter_rpg/theme.dart';

///fluter create flutter rpg <--this created the project
///////  code . ///// opens it up in the editor

/// The main entry point for the application.
///
/// This function runs the application. It builds a [MaterialApp] with the
/// [Home] widget as the home and [primaryTheme] as the theme.
void main() {
  runApp(MaterialApp(
    home: const Sandbox(),
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
        foregroundColor: AppColors.primaryColor,
      ),
      body: const Center(
        child: Text('Sandbox'),
      ),
    );
  }
}
