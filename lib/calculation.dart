import 'dart:math';

class Calculation {
  Calculation({this.height, this.weight});

  final int height;
  final int weight;

  double calcBMI() {
    double bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  String getResult() {
    if (calcBMI() >= 25)
      return "OVERWEIGHT";
    else if (calcBMI() > 18.5)
      return "NORMAL";
    else
      return "UNDERWEIGHT";
  }

  String getInterpretation() {
    if (calcBMI() >= 25)
      return "You have a higher than normal body weight. Try to exercise more.";
    else if (calcBMI() >= 18.5)
      return "You have a normal body weight. Good job!";
    else
      return "You have a lower than normal body weight. Eat a bit more.";
  }

}
