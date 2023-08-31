import 'dart:math';

class CalculatorBrain {
  final height;
  final weight;
  double _bmi = 0.0;
  CalculatorBrain(this.weight, this.height);
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than a normal body weight, Try to exercise more.";
    } else if (_bmi > 18.5) {
      return "You Have Normal Body Weight. Good Job !";
    } else {
      return "You have a normal than body weight, You can eat bite more";
    }
  }
}
