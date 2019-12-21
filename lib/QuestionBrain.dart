import 'Question.dart';

class QuestionBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet', a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questionBank[_questionNumber].question;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
