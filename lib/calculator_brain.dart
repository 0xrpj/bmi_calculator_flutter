class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / ((height * height) / 10000);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher body weight. Try to exercise well.";
    } else if (_bmi > 18.5) {
      return "Great job. Keep on doing whatever you are doing.";
    } else {
      return "Oh no! Eat more please.";
    }
  }
}
