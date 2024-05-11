import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class AngleProvider with ChangeNotifier {
  double degree = 0;
  double radians = 0;
  double gradians = 0;
  TextEditingController inPutController = TextEditingController(text: '0');
  TextEditingController outPutController = TextEditingController(text: '0');
  BuildContext? _context;

  TextEditingController get input => inPutController;
  TextEditingController get outPut => outPutController;

  String? selectedOption1;
  String? selectedOption2;

  void setContext(BuildContext context) {
    _context = context;
  }

  BuildContext? get context => _context;

  void appendText(String text) {
    String currentValue = inPutController.text;

    // If currentValue is '0', replace it with the new text
    if (currentValue == '0') {
      inPutController.text = text;
    } else {
      inPutController.text += text;
    }

    notifyListeners();
  }

  void cleanAll() {
    inPutController.text = '0'; // Set to '0' when clearing all
    outPutController.text = '0';
    notifyListeners();
  }

  void backSpace() {
    String currentValue = inPutController.text;

    if (currentValue.isNotEmpty) {
      String newValue = currentValue.substring(0, currentValue.length - 1);

      // If the new value becomes empty, set it to '0'
      inPutController.text = newValue.isNotEmpty ? newValue : '0';

      notifyListeners();
    }
  }

  void setSelectedOption1(String option) {
    selectedOption1 = option;
    debugPrint(selectedOption1);
    notifyListeners(); // Notify listeners after updating the selected option
  }
  void setSelectedOption2(String option) {
    selectedOption2 = option;
    debugPrint(selectedOption2);
    notifyListeners(); // Notify listeners after updating the selected option
  }

  void calculateNew(){
    if(selectedOption1 == 'Degrees' && selectedOption2 == 'Radians'){
      debugPrint('degreeToRadians');
      degreeToRadians();
    } else if(selectedOption1 == 'Degrees' && selectedOption2 == 'Gradians'){
      degreeToGradians();
    } else if(selectedOption1 == 'Degrees' && selectedOption2 == 'Degrees'){
      // degreeToDegrees();
      outPutController.text = inPutController.text;
    } else if(selectedOption1 == 'Radians' && selectedOption2 == 'Degrees'){
      radiansToDegrees();
    } else if(selectedOption1 == 'Radians' && selectedOption2 == 'Radians'){
      // radiansToRadians();
      outPutController.text = inPutController.text;
    } else if(selectedOption1 == 'Radians' && selectedOption2 == 'Gradians'){
      radiansToGradians();
    } else if(selectedOption1 == 'Gradians' && selectedOption2 == 'Degrees'){
      gradiansToDegrees();
    } else if(selectedOption1 == 'Gradians' && selectedOption2 == 'Radians'){
      gradiansToRadians();
    } else{
      // gradiansToGradians();
      outPutController.text = inPutController.text;
    }
  }

  
  // void convertToDegree(String option){
  //   String inputValue = inPutController.text;
  //   double result;
  //   switch(option){
  //     case 'Degrees':
  //       result = double.tryParse(inputValue) ?? 0;
  //       break;
  //     case 'Radians':
  //       double radians = double.tryParse(inputValue) ?? 0;
  //       result = radians * (180 / pi);
  //       break;
  //     case 'Gradians':
  //       double gradians = double.tryParse(inputValue) ?? 0;
  //       result = (gradians * 180) / 200;
  //       break;
  //     default:
  //       result = 0;
  //       break;
  //   }
  //   degree = result;
  //   notifyListeners();
  // }

  // void calculate() {
  //   // Calculate based on the currently selected option
  //   if (selectedOption1 == 'Radians') {
  //     degreeToRadians();
  //   } else if (selectedOption1 == 'Gradians') {
  //     degreeToGradians();
  //   } else {
  //     degreeToDegrees();
  //   }
  // }

  void degreeToRadians(){
    String degreeInput = inPutController.text;
    double degrees = double.tryParse(degreeInput) ?? 0;
    outPutController.text = (degrees * (pi / 180)).toString();
    notifyListeners();
  }

  void degreeToGradians(){
    String degreeInput = inPutController.text;
    double degrees = double.tryParse(degreeInput) ?? 0;
    outPutController.text = ((degrees * 200) / 180).toString();
    notifyListeners();
  }

  void degreeToDegrees(){
    outPutController.text = inPutController.text;
    notifyListeners();
  }

  void radiansToDegrees(){
    String radiansInput = inPutController.text;
    double radians  = double.tryParse(radiansInput) ?? 0;
    outPutController.text = (radians * (180 / pi)).toString();
    notifyListeners();
  }

  void radiansToRadians(){
    outPutController.text = outPutController.text;
    notifyListeners();
  }

  void radiansToGradians(){
    String radiansInput = inPutController.text;
    double radians = double.tryParse(radiansInput) ?? 0;
    outPutController.text = ((radians * 200) / pi).toString();
    notifyListeners();
  }

  void gradiansToDegrees(){
    String gradiansInput = inPutController.text;
    double gradians = double.tryParse(gradiansInput) ?? 0;
    outPutController.text = ((gradians * 180) / 200).toString();
    notifyListeners();
  }

  void gradiansToRadians(){
    String gradiansInput = inPutController.text;
    double gradians = double.tryParse(gradiansInput) ?? 0;
    outPutController.text = ((gradians * pi) / 200).toString();
    notifyListeners();
  }

  void gradiansToGradians(){
    inPutController.text = outPutController.text;
    notifyListeners();
  }
}
