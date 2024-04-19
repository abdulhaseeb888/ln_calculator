import 'package:flutter/material.dart';
import 'package:ln_calculator/modals/common/providers/language_change_controller.dart';
import 'package:ln_calculator/ui/standard/standard.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'modals/common/providers/commonBtnProvider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sp = await SharedPreferences.getInstance();
  final String languageCode = sp.getString('language_code') ?? '';
  runApp(
     MyApp(locale: languageCode,),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.locale});
  final String locale;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CommonBtnProvider(),
        ),
        ChangeNotifierProvider(create: (context) => LanguageChangeController())
      ],
      child: Consumer<LanguageChangeController>(builder: (context, value, child) {

        return MaterialApp(
          locale: locale == '' ? Locale('en') : value.appLocale == null ? Locale('en') : value.appLocale,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en'),
            Locale('es'),
            Locale('ru'),
            Locale('zh'),
            Locale('ar'),
            Locale('ur'),
            Locale('hi'),
          ],
          title: 'Ln Calculator',
          home: const Standard(),
        );
      },)
    );
  }
}
