import 'dart:math';

class BMICalculator {
  BMICalculator({
    required this.height,
    required this.weight,
  });

  final int height;
  final int weight;
  late double bmi;

  getResult() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  getBmiText() {
    if (bmi >= 25) {
      return "Overweight";
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  getInterpretation() {
    if (bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercies more";
    } else if (bmi > 18.5) {
      return "You have a normal body weight. Goob Job!";
    } else {
      return "You have a lower than normal body weight. You can eat more.";
    }
  }
}
