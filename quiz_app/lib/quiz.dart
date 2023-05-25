import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectAnswer.add(answer);

    if (selectAnswer.length == questions.length) {
      setState(() {
        selectAnswer = [];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(context) {
    final screenWidget = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : QuestionsScreen(
            onSelectAnswer: chooseAnswer,
          );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 14, 186, 216),
              Color.fromARGB(255, 33, 27, 192)
            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
