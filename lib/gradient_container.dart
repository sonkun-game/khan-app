
import 'package:flutter/material.dart';

import 'package:basics/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StateLessWidget {
  GradientContainer({super.key, required this.colors});

  GradientContainer.purple({super.key})
      : colors = const [
          Color.deepPurple,
          Color.indigo,
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