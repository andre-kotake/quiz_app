import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/answer.dart';
import 'package:quiz_app/models/screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = Screen.start;
  final List<Answer> selectedUserAnswers = [];

  void _chooseAnswer(Answer answer) {
    selectedUserAnswers.add(answer);

    if (selectedUserAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers.clear();
        activeScreen = Screen.results;
      });
    }
  }

  void _switchScreen() {
    setState(() {
      activeScreen = Screen.questions;
    });
  }

  void _restartQuiz() {
    setState(() {
      selectedUserAnswers.clear();
      activeScreen = Screen.start;
    });
  }

  Widget _getScreen() {
    switch (activeScreen) {
      case Screen.start:
        return StartScreen(_switchScreen);
      case Screen.questions:
        return QuestionsScreen(onSelectAnswer: _chooseAnswer);
      case Screen.results:
        return ResultsScreen(_restartQuiz, chosenAnswers: selectedUserAnswers);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget = _getScreen();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromRGBO(66, 33, 143, 1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
