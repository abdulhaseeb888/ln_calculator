import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ln_calculator/ui/standard/standard.dart';
import 'package:provider/provider.dart';

import 'modals/common/providers/commonBtnProvider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    const MyApp(),
    // EasyLocalization(
      // path: 'assets',
      // supportedLocales: [
      //   Locale('en'),
      //   Locale('ch'),
      // ],
      // fallbackLocale: Locale('en'),
      // assetLoader: CodegenLoader(),
      // child:

    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CommonBtnProvider(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            // localizationsDelegates: context.localizationDelegates,
            // supportedLocales: context.supportedLocales,
            // locale: context.locale,
            title: 'Flutter Demo',
            home: const Standard(),
          );
        },
      ),
    );
  }
}
