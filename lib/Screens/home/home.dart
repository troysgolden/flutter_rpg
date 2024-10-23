import 'package:flutter/material.dart';

import '../../shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Characters'),
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const StyledText('Character List'), //Body Text
              const StyledHeading('Character Name'),
              const StyledTitle('Character Name',
                  ),

              FilledButton(
                onPressed: () {},
                child: const Text('Create New'),
              )
            ],
          )),
    );
  }
}
