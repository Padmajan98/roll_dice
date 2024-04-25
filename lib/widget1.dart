import 'package:flutter/material.dart';
import 'package:roll_dice/roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientColor extends StatelessWidget {
  const GradientColor(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  const GradientColor.purple({super.key})
      : color1 = Colors.purple,
        color2 = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: Roller(),
      ),
    );
  }
}
