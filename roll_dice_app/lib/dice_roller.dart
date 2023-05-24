import 'dart:math';
import 'package:flutter/material.dart';

final rendomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 1;

  void rollDice() {
    setState(() {
      diceRoll = rendomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            boxShadow: const [
              BoxShadow(
                spreadRadius: -12,
                color: Color.fromARGB(148, 2, 2, 2),
                blurRadius: 4,
                offset: Offset(5, 5),
              )
            ],
          ),
          child: Image.asset(
            'assets/images/dice$diceRoll.png',
            width: 200,
          ),
        ),
        //style
        const Padding(
          padding: EdgeInsets.only(top: 15),
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            fixedSize: const Size(180, 60),
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              color: Color.fromARGB(208, 0, 0, 0),
              fontSize: 25.0,
            ),
          ),
        )
      ],
    );
  }
}
