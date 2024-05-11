import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ln_calculator/utils/route/route_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  onPageLoad() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacementNamed(context, CRoutes.standardScreen);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Splash Screen",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
