import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_question.dart';

class Answer {
  const Answer({required this.question, required this.answer});

  final String answer;
  final QuizQuestion question;

  bool get isCorrect {
    return question.answers[0] == answer;
  }

  String get correctAnswer {
    return question.answers[0];
  }

  int get questionIndex {
    return questions.indexOf(question) + 1;
  }
}
