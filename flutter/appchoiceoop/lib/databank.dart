import 'question.dart';

class DataBank {
  int _questionNumber = 0;

  List<Question> _dataBank = [
    Question('กล้วยเป็นไม้ยืนต้น', false),
    Question('ถั่วเหลืองเป็นพืชใบเลี้ยงคู่', true),
    Question('stomata คือปากใบ', true),
    Question('อ้อยเป็นพืชไร่', true),
    Question('ทั้งสัตว์และพืชมี cell wall', false),
  ];

  // check if it safe togo to the next question  bool nextQuestion() {
  bool nextQuestion() {
    if (_questionNumber < _dataBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _dataBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _dataBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= (_dataBank.length - 1)) {
      print('return true');
      return true;
    } else {
      print('return false');
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
