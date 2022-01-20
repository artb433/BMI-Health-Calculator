import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int? height;
  final int? weight;

  double? _bmi;

  String calculateBMI() {
    double _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultComment() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String hint() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body, Try to exercise more.';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good job. ';
    } else if (_bmi! < 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else {
      return '';
    }
  }
}
