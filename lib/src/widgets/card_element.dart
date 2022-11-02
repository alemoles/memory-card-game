import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_card_game/src/model/card.dart';
import 'package:memory_card_game/src/widgets/flip_effect.dart';

class CardElement extends StatelessWidget {
  const CardElement({
    Key? key,
    required this.card,
    required this.controller,
  }) : super(key: key);

  final FlipCardController controller;
  final CardData card;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.flipCard(),
      child: FlipEffectWidget(
        controller: controller,
        front: _Data(),
        back: _Data(
          image: SvgPicture.asset(
            card.url,
          ),
        ),
      ),
    );
  }
}

class _Data extends StatelessWidget {
  const _Data({
    Key? key,
    this.image,
  }) : super(key: key);

  final Widget? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blueAccent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image
            SizedBox(
              height: 45,
              child: image,
            ),
          ],
        ),
      ),
    );
  }
}
