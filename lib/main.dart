import 'package:flutter/material.dart';
import 'package:ln_calculator/ui/standard/standard.dart';
import 'package:provider/provider.dart';

import 'modals/common/providers/commonBtnProvider.dart';

void main() {
  runApp(const MyApp());
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
            title: 'Flutter Demo',
            home: const Standard(),
          );
        },
      ),
    );
  }
}
