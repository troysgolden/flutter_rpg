import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  // submit handler
  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      print('Name is required');
      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      print('Slogan is required');
      return;
    }
    print('Name: ${_nameController.text}');
    print('Slogan: ${_sloganController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Character Creation'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(children: [
          //welcome text,
          Center(
            child: Icon(Icons.code, color: AppColors.primaryColor),
          ),
          const Center(child: StyledHeading('Welcome, new player')),
          const Center(
              child:
                  StyledText('Create a name and slogan for your character.')),
          const SizedBox(height: 30),
          //input for name and slogan,
          const SizedBox(height: 30),

          //input for name and slogan,
          TextField(
            controller: _nameController,
            style: GoogleFonts.kanit(
              textStyle: Theme.of(context).textTheme.bodyMedium,
            ),
            cursorColor: AppColors.textColor,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_2),
              label: Text('Character name'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: _sloganController,
            style: GoogleFonts.kanit(
              textStyle: Theme.of(context).textTheme.bodyMedium,
            ),
            cursorColor: AppColors.textColor,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.chat),
              label: Text('Character slogan'),
            ),
          ),
          const SizedBox(height: 30),
          //select vocation title

          Center(
            child: Icon(Icons.code, color: AppColors.primaryColor),
          ),
          const Center(child: StyledHeading('Choose your vocation')),
          const Center(
              child: StyledText('This determines your stats and skills.')),
          const SizedBox(height: 30),
          //input for name and slogan,
          const SizedBox(height: 30),
          //vocation cards
          const VocationCard(
            vocation: Vocation.junkie,
          ),
           const VocationCard(
            vocation: Vocation.ninja,
          ),
           const VocationCard(
            vocation: Vocation.raider,
          ),
           const VocationCard(
            vocation: Vocation.wizard,
          ),
          //create button
          Center(
            child: StyledButton(
              onPressed: handleSubmit,
              child: const StyledHeading('Create Character'),
            ),
          ),
        ]),
      ),
    );
  }
}
