
import 'package:flutter/material.dart';

import 'package:my_first_project/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  GradientContainer.purple({super.key})
      : colors = [
          Colors.deepPurple,
          Colors.indigo,
        ];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ), // LinearGradient
      ), // BoxDecoration
      child: const Center(
        // child: StyledText('Hello World!'),
        child: DiceRoller(),
      ), // Center
    );
  }
}