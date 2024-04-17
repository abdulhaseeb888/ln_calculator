import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CommonBtnProvider with ChangeNotifier {
  TextEditingController inPutController = TextEditingController();
  TextEditingController outPutController = TextEditingController();

  TextEditingController get input => inPutController;
  TextEditingController get output => outPutController;


  void appendText(String text) {
    inPutController.text += text;
    notifyListeners();
  }

  // C Button
  void clean() {
    input.clear();
    notifyListeners();
  }

  // CE Button
  void cleanAll(){
    input.clear();
    output.clear();
    notifyListeners();
  }

  // Backspace Button
  void backSpace() {
    final currentValue = inPutController.text;
    if (currentValue.isNotEmpty) {
      final newValue = currentValue.substring(0, currentValue.length - 1);
      inPutController.text = newValue;
      notifyListeners();
    }
  }

  // Standard Calculator math logic
  void calculate() {
    final expression = inPutController.text.trim();
    if (expression.isEmpty) {
      outPutController.text = 'Error';
      notifyListeners();
      return;
    }

    try {
      double result = evaluateExpression(expression);
      outPutController.text = result.toString();
      notifyListeners();
    } catch (e) {
      outPutController.text = '';
      notifyListeners();
    }
  }


  double evaluateExpression(String expression) {
    // Split the expression into numbers and operators
    final numbers = <double>[];
    final operators = <String>[];
    String currentNumber = '';

    // Iterate through the expression and extract numbers and operators
    for (int i = 0; i < expression.length; i++) {
      final char = expression[i];
      if (_isDigit(char)) {
        currentNumber += char;
        // If it's the last character or the next character is an operator
        if (i == expression.length - 1 || _isOperator(expression[i + 1])) {
          numbers.add(double.parse(currentNumber));
          currentNumber = '';
        }
      } else if (_isOperator(char)) {
        operators.add(char);
      } else {
        throw Exception('Invalid character: $char');
      }
    }

    // Perform the calculations
    double result = numbers[0];
    for (int i = 0; i < operators.length; i++) {
      final operator = operators[i];
      final nextNumber = numbers[i + 1];
      switch (operator) {
        case '+':
          result += nextNumber;
          break;
        case '-':
          result -= nextNumber;
          break;
        case '*':
          result *= nextNumber;
          break;
        case '/':
          if (nextNumber == 0) {
            throw Exception('Division by zero');
          }
          result /= nextNumber;
          break;
        default:
          throw Exception('Invalid operator: $operator');
      }
    }

    return result;
  }

  bool _isDigit(String char) {
    return RegExp(r'[0-9]').hasMatch(char);
  }

  bool _isOperator(String char) {
    return ['+', '-', '*', '/'].contains(char);
  }


}

