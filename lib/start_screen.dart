import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 200),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Learn Flutter the fun way!",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          OutlinedButton.icon(
            onPressed: _startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }

  void _startQuiz() {}
}
