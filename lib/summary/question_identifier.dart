import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({super.key, required this.answer});

  final Answer answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: answer.isCorrect
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        answer.questionIndex.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 50),
        ),
      ),
    );
  }
}
