import 'package:flutter/material.dart';
import 'package:memory_card_game/src/model/card.dart';
import 'package:memory_card_game/src/widgets/card_element.dart';
import 'package:memory_card_game/src/widgets/flip_effect.dart';

class MemoryCardBoard extends StatelessWidget {
  const MemoryCardBoard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = FlipCardController();
    final card = CardData(
      url: 'assets/svgs/sun.svg',
    );
    return CardElement(
      controller: controller,
      card: card,
    );
  }
}
