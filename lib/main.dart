import 'package:flutter/material.dart';
import 'package:my_first_project/quiz.dart';

void onSelectAnswer(String answer) {
  // Handle the selected answer here
  print('Selected answer: $answer');
}

void main() {
  runApp(const Quiz(onSelectAnswer: onSelectAnswer)); // Quiz
}
