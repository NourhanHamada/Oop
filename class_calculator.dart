void main() {
  Summation newCalculation = Summation();
  newCalculation.firstNumber = 2;
  newCalculation.secondNumber = 5;
  newCalculation.operator = '+';
  newCalculation.calc();
}

abstract class Calc {
  var firstNumber = 0;
  var secondNumber = 0;
  var operator = '';
  void calc();
}

class Summation extends Calc{
  @override
  void calc() {
    if(operator == '+'){
      print('$firstNumber + $secondNumber = ${firstNumber + secondNumber}');
    }
  }
}

class Subtraction extends Calc{
  @override
  void calc() {
    if(operator == '-'){
      print('$firstNumber - $secondNumber = ${firstNumber - secondNumber}');
    }
  }
}

class Multiplication extends Calc{
  @override
  void calc() {
    if(operator == '*'){
      print('$firstNumber * $secondNumber = ${firstNumber * secondNumber}');
    }
  }
}

class Division extends Calc{
  @override
  void calc() {
    if(operator == '/'){
      print('$firstNumber / $secondNumber = ${firstNumber / secondNumber}');
    }
  }
}