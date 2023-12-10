import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/answer.dart';
import 'package:quiz_app/summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.answerData, {super.key});

  final Answer answerData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(answer: answerData),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  answerData.question.text,
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 201, 153, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  answerData.answer,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 201, 153, 255),
                  ),
                ),
                Text(
                  answerData.correctAnswer,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 181, 255, 255),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
