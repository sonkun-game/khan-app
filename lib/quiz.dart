import 'package:flutter/material.dart';
import 'package:my_first_project/start_screen.dart';
import 'package:my_first_project/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = const StartScreen(switchScreen);
    super.initState();
  }
  
  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    // final currentQuestion = questions[currentQuestionIndex];
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ), // LinearGradient
          ), // BoxDecoration
          child: activeScreen,
        ),
      ), // Scaffold
    ),
  }
}