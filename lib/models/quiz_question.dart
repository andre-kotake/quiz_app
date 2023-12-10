class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final List<String> answers;
  final String text;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
