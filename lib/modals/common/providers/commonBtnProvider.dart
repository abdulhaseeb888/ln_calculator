import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CommonBtnProvider with ChangeNotifier {
  TextEditingController inPutController = TextEditingController(text: '0');
  TextEditingController outPutController = TextEditingController(text: '0');
  BuildContext? _context;

  TextEditingController get input => inPutController;
  TextEditingController get output => outPutController;

  void setContext(BuildContext context){
    _context = context;
  }

  BuildContext? get context => _context;





  void appendText(String text) {
    String currentValue = inPutController.text;
    if(currentValue == '0' && text != '.'){
      inPutController.text = text;
    } else {
      inPutController.text += text;
    }
    notifyListeners();
  }

  // C Button
  void clean() {
    inPutController.text = '0';
    notifyListeners();
  }

  // CE Button
  void cleanAll(){
    inPutController.text = '0';
    outPutController.clear();
    notifyListeners();
  }

  // Backspace Button
  void backSpace() {
    final currentValue = inPutController.text;
    if (currentValue.isNotEmpty) {
      final newValue = currentValue.substring(0, currentValue.length - 1);
      inPutController.text = newValue.isEmpty ? '0' : newValue; // Set to '0' if empty
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
      String resultString = result.toString();
      List<String> resultList = resultString.split('');
      outPutController.text = langOutPut(context!, resultList);
      inPutController.text = outPutController.text;
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
    bool hasDecimal = false; // Flag to track if the current number has a decimal point

    // Iterate through the expression and extract numbers and operators
    for (int i = 0; i < expression.length; i++) {
      final char = expression[i];
      if (_isDigit(char) || char == '.') {
        currentNumber += char;
        if (char == '.') {
          if (hasDecimal) {
            throw Exception('Invalid expression: multiple decimal points in a number');
          }
          hasDecimal = true;
        }
        // If it's the last character or the next character is an operator
        if (i == expression.length - 1 || _isOperator(expression[i + 1])) {
          numbers.add(double.parse(currentNumber));
          currentNumber = '';
          hasDecimal = false; // Reset the flag after adding the number
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

  String langOutPut(BuildContext context, List<String> inputList) {
    final localizations = AppLocalizations.of(context)!;
    String output = '';

    for (String char in inputList) {
      switch (char) {
        case '.':
          output += localizations.period ?? '';
          break;
        case '0':
          output += localizations.zero ?? '';
          break;
        case '00':
          output += localizations.doubleZero ?? '';
          break;
        case '1':
          output += localizations.one ?? '';
          break;
        case '2':
          output += localizations.two ?? '';
          break;
        case '3':
          output += localizations.three ?? '';
          break;
        case '4':
          output += localizations.four ?? '';
          break;
        case '5':
          output += localizations.five ?? '';
          break;
        case '6':
          output += localizations.six ?? '';
          break;
        case '7':
          output += localizations.seven ?? '';
          break;
        case '8':
          output += localizations.eight ?? '';
          break;
        case '9':
          output += localizations.nine ?? '';
          break;
        default:
          output += char;
          break;
      }
    }

    return output;
  }

  void calculateSquardRoot(){
    final currentValue = inPutController.text;
    final result = sqrt(double.parse(currentValue));
    outPutController.text = result.toString();
    inPutController.text = outPutController.text;
    notifyListeners();
    debugPrint(result.toString());
  }

  void calculateSquar(){
    final currentValue = inPutController.text;
    final num result = pow(double.parse(currentValue), 2);
    outPutController.text = result.toString();
    inPutController.text = outPutController.text;
    notifyListeners();
  }

  void oneOverX(){
    final currentValue = inPutController.text;
    final result = 1 / double.parse(currentValue);
    outPutController.text = result.toString();
    inPutController.text = outPutController.text;
    notifyListeners();
  }
}

