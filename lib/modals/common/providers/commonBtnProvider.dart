import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CommonBtnProvider with ChangeNotifier {
  TextEditingController textController = TextEditingController();

  TextEditingController get input => textController;

  void appendText(String text) {
    textController.text += text;
    notifyListeners();
  }

  void clean() {
    input.clear();
    notifyListeners();
  }

  void backSpace() {
    final currentValue = textController.text;
    if (currentValue.isNotEmpty) {
      final newValue = currentValue.substring(0, currentValue.length - 1);
      textController.text = newValue;
      notifyListeners();
    }
  }

  void divide() {
    late final currentValue = textController.text.trim();
    if (currentValue.isNotEmpty) {
      // Check if the expression contains the divide symbol '/'
      if (currentValue.contains('/')) {
        // Split the current value by the divide symbol '/'
        late final  parts = currentValue.split('/');
        if (parts.length == 2) {
          try {
            final num1 = double.parse(parts[0]);
            final num2 = double.parse(parts[1]);
            // Check if divisor is not zero
            if (num2 != 0) {
              final result = num1 / num2;
              textController.text = result.toString();
            } else {
              // Division by zero error
              textController.text = 'Error';
            }
          } catch (e) {
            // Error in parsing numbers
            textController.text = 'Error';
          }
        } else {
          // Invalid expression for division
          textController.text = 'Error';
        }
      } else {
        // If the expression does not contain a divide symbol '/'
        textController.text = 'Error';
      }
      notifyListeners();
    }
  }

}

