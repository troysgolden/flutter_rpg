import 'package:flutter/material.dart';
import 'package:flutter_rpg/theme.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final String character;

  @override

  /// Returns a [Card] widget with a [Text] widget as its child,
  /// displaying the given character.
  ///
  /// The [Card] widget is given a default padding of 8px on the vertical
  /// axis and 16px on the horizontal axis.
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            Text(character),
            const Expanded(
              child: SizedBox(),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward,
                color: AppColors.textColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
