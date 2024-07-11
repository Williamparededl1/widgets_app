import 'package:flutter/material.dart';

class CardScrenn extends StatelessWidget {
  static const String name = 'card_screnn';
  const CardScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Screnn')),
      body: const Placeholder(),
    );
  }
}
