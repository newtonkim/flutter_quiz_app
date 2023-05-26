import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen_container.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
// create a new variable for selected answers
   List<String> selectedAnswers = [];

/* create a method 
 * for updating selected answers
 * using the add method in dart
*/
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    // compair length of answers and questions 

    if(selectedAnswers.length == questions.length){
        setState(() {
          selectedAnswers = [];
          activeScreen = 'start-screen';
        });
    }
  }

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 151, 237, 197),
                Color.fromARGB(222, 20, 193, 170),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : QuestionScreen(chooseAnswer),
        ),
      ),
    );
  }
}
