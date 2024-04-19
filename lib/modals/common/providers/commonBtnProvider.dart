import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      outPutController.text = '';
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

  String langOutPut(BuildContext context, String inputValue) {
    var appLocalization = AppLocalizations.of(context);
    var localizedValue = StringBuffer();

    if (appLocalization == null) {
      return inputValue;
    }

    for (int i = 0; i < inputValue.length; i++) {
      var value = inputValue[i];
      switch (value) {
        case '.':
          AppLocalizations.of(context)!.period;
          break;
        case '0':
          AppLocalizations.of(context)!.zero;
          break;
        case '00':
          AppLocalizations.of(context)!.doubleZero;
          break;
        case '1':
          AppLocalizations.of(context)!.one;
          break;
        case '2':
          AppLocalizations.of(context)!.two;
          break;
        case '3':
          AppLocalizations.of(context)!.three;
          break;
        case '4':
          AppLocalizations.of(context)!.four;
          break;
        case '5':
          AppLocalizations.of(context)!.five;
          break;
        case '6':
          AppLocalizations.of(context)!.six;
          break;
        case '7':
          AppLocalizations.of(context)!.seven;
          break;
        case '8':
          AppLocalizations.of(context)!.eight;
          break;
        case '9':
          AppLocalizations.of(context)!.nine;
          break;
        default:
          localizedValue.write(value);
      }
      localizedValue;
    }
    return localizedValue.toString();
  }

}

