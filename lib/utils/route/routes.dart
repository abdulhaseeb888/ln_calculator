import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ln_calculator/ui/angle/angle.dart';
import 'package:ln_calculator/ui/area/area.dart';
import 'package:ln_calculator/ui/currency/currency.dart';
import 'package:ln_calculator/ui/data/data.dart';
import 'package:ln_calculator/ui/date_calculation/date_calculation.dart';
import 'package:ln_calculator/ui/energy/energy.dart';
import 'package:ln_calculator/ui/length/length.dart';
import 'package:ln_calculator/ui/power/power.dart';
import 'package:ln_calculator/ui/pressure/pressure.dart';
import 'package:ln_calculator/ui/programmer/programmer.dart';
import 'package:ln_calculator/ui/scientific/scientific.dart';
import 'package:ln_calculator/ui/speed/speed.dart';
import 'package:ln_calculator/ui/standard/standard.dart';
import 'package:ln_calculator/ui/temperature/temperature.dart';
import 'package:ln_calculator/ui/time/time.dart';
import 'package:ln_calculator/ui/volume/volume.dart';
import 'package:ln_calculator/ui/weight_and_mass/weight_and_mass.dart';
import 'package:ln_calculator/utils/route/route_name.dart';

import '../../ui/splash/splash_screen.dart';
import 'animate_route.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (BuildContext buildContext) {
        return SplashScreen();
      });
    case CRoutes.standardScreen:
      debugPrint(settings.name);
      return routeOne(
          settings: settings,
          widget: Standard(),
          routeName: CRoutes.standardScreen);
    case CRoutes.scientificScreen:
      debugPrint(settings.name);
      return routeOne(
          settings: settings,
          widget: Scientific(),
          routeName: CRoutes.scientificScreen);
    case CRoutes.programmerScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Programmer(), routeName: CRoutes.programmerScreen);
    case CRoutes.date_calculationScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: DateCalculation(), routeName: CRoutes.date_calculationScreen);
    case CRoutes.currencyScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Currency(), routeName: CRoutes.currencyScreen);
    case CRoutes.volumeScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Volume(), routeName: CRoutes.volumeScreen);
    case CRoutes.lengthScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Length(), routeName: CRoutes.lengthScreen);
    case CRoutes.weight_and_massScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: WeightAndMass(), routeName: CRoutes.weight_and_massScreen);
    case CRoutes.temperatureScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Temperature(), routeName: CRoutes.temperatureScreen);
    case CRoutes.energyScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Energy(), routeName: CRoutes.energyScreen);
    case CRoutes.areaScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Area(), routeName: CRoutes.areaScreen);
    case CRoutes.speedScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Speed(), routeName: CRoutes.speedScreen);
    case CRoutes.timeScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Time(), routeName: CRoutes.timeScreen);
    case CRoutes.powerScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Power(), routeName: CRoutes.powerScreen);
    case CRoutes.dataScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Data(), routeName: CRoutes.dataScreen);
    case CRoutes.pressureScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Pressure(), routeName: CRoutes.pressureScreen);
    case CRoutes.angleScreen:
      debugPrint(settings.name);
      return routeOne(settings: settings, widget: Angle(), routeName: CRoutes.angleScreen);
    default:
      debugPrint("default");
      return routeOne(
          settings: settings,
          widget: Standard(),
          routeName: CRoutes.standardScreen);
  }
}
