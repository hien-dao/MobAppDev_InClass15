class Question {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  Question({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    final answersMap = json['answers'];
    final correctKey = json['correct_answer'];

    List<String> answers = [];
    answersMap.forEach((key, value) {
      if (value != null) answers.add(value);
    });

    return Question(
      question: json['question'],
      answers: answers,
      correctAnswer: answersMap[correctKey],
    );
  }
}