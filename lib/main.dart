import 'package:flutter/material.dart';
import 'package:memory_card_game/src/pages/mermory_card_board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Memory Card Game',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MemoryCardBoard(),
      ),
    );
  }
}
