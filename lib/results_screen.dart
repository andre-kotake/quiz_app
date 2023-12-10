import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/answer.dart';
import 'package:quiz_app/summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.restartQuiz,
      {super.key, required this.chosenAnswers});

  final List<Answer> chosenAnswers;
  final void Function() restartQuiz;

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions =
        chosenAnswers.where((data) => data.isCorrect).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 201, 153, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            QuestionsSummary(chosenAnswers),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: restartQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.replay),
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
