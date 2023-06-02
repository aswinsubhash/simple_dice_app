import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final randomNumber = Random();
  int currentDie = 1;

  void diceRoll() {
    setState(() {
      currentDie = randomNumber.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          'Tap the dice',
          style: GoogleFonts.pacifico(
            fontSize: 25,
            color: Colors.white54
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        GestureDetector(
          onTap: diceRoll,
          child: Image.asset(
            'assets/images/dice-$currentDie.png',
            width: 200,
          ),
        ),
      ],
    );
  }
}
