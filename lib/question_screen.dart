import 'package:flutter/material.dart';
import 'package:my_first_project/answer_button.dart';
import 'package:my_first_project/data/questions.dart';

class QuestionScreen extends StatefulWidget {
   const QuestionScreen({super.key});

   @override
   State<QuestionScreen> createState() {
     return _QuestionScreenState();
   }
}

class _QuestionScreenState extends State<QuestionScreen> {
  final currentQuestion = questions[0];

   @override
   Widget build(BuildContext context) {
     return const Scaffold(
       body: SizedBox(
         width: double.infinity,
         child: const Column(
           mainaxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
              currentQuestion.text, 
              style: const TextStyle(color: Colors.white, fontSize: 24)
              ),
             SizedBox(height: 30),
            ...currentQuestion.answers.map((answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            }),
           ],
         ), // Column
       ),
     );
   }
 }