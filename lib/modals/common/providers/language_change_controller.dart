

import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageChangeController with ChangeNotifier {
  Locale? _appLocale;
  Locale? get appLocale => _appLocale;

  void changeLanguage(Locale locale) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    _appLocale = locale;
    await sp.setString('language_code', locale.languageCode);
    notifyListeners();
  }
}