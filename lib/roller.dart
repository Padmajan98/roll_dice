import 'dart:math';

import 'package:flutter/material.dart';

class Roller extends StatefulWidget {
  const Roller({super.key});

  @override
  State<Roller> createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  var currentNum = 1;

  void rollDice() {
    setState(() {
      currentNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          image: AssetImage('assets/images/dice$currentNum.png'),
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 22),
              backgroundColor: Colors.deepPurpleAccent),
          child: const Text('roll the dice'),
        )
      ],
    );
  }
}
