class QuestionScreen extends StatefulWidget {
   const QuestionScreen({super.key});

   @override
   State<QuestionScreen> createState() {
     return _QuestionScreenState();
   }
}

class _QuestionScreenState extends State<QuestionScreen> {
   @override
   Widget build(BuildContext context) {
     return const Scaffold(
       body: Center(
         child: Text('Question Screen'),
       ),
     );
   }
 }