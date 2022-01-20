import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultComment() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
