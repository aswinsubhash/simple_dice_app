import 'package:flutter/material.dart';
import 'package:sample/dice_roller.dart';

const Alignment startingAlignment = Alignment.topLeft;
const Alignment endingAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    Key? key,
    required this.colorOne,
    required this.colorTwo,
  }) : super(key: key);

  final Color colorOne;
  final Color colorTwo;

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startingAlignment,
          end: endingAlignment,
          colors: [
            colorOne,
            colorTwo,
          ],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
