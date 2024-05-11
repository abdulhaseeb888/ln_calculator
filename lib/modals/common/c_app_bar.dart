import 'package:flutter/material.dart';
import 'package:ln_calculator/constraints/c_colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ln_calculator/modals/common/providers/language_change_controller.dart';
import 'package:ln_calculator/ui/scientific/scientific.dart';
import 'package:ln_calculator/utils/route/route_name.dart';
import 'package:provider/provider.dart';

enum Language { english, spanish, russian, chinese, arabic, urdu, hindi }

class CAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CAppBar({Key? key, required this.appBarTitle}) : super(key: key);

  final String appBarTitle;

  @override
  State<CAppBar> createState() => _CAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _CAppBarState extends State<CAppBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: _scaffoldKey,
      toolbarHeight: 60,
      elevation: 0,
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      title: Text(
        widget.appBarTitle,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: CColors.textColor,
          fontSize: 12,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: IconButton(
          highlightColor: Colors.transparent,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: CColors.textColor,
            size: 20,
          ),
        ),
      ),
      actions: [
        Consumer<LanguageChangeController>(
          builder: (context, value, child) {
            return PopupMenuButton<Language>(
              icon: Icon(Icons.language, size: 20, color: CColors.textColor),
              onSelected: (language) {
                switch (language) {
                  case Language.english:
                    value.changeLanguage(Locale('en'));
                    break;
                  case Language.spanish:
                    value.changeLanguage(Locale('es'));
                    break;
                  case Language.russian:
                    value.changeLanguage(Locale('ru'));
                    break;
                  case Language.chinese:
                    value.changeLanguage(Locale('zh'));
                    break;
                  case Language.arabic:
                    value.changeLanguage(Locale('ar'));
                    break;
                  case Language.urdu:
                    value.changeLanguage(Locale('ur'));
                    break;
                  case Language.hindi:
                    value.changeLanguage(Locale('hi'));
                    break;
                }
              },
              itemBuilder: (context) => <PopupMenuEntry<Language>>[
                PopupMenuItem(
                  value: Language.english,
                  child: Text('English'),
                ),
                PopupMenuItem(
                  value: Language.spanish,
                  child: Text('Spanish'),
                ),
                PopupMenuItem(
                  value: Language.russian,
                  child: Text('Russian'),
                ),
                PopupMenuItem(
                  value: Language.chinese,
                  child: Text('Chinese'),
                ),
                PopupMenuItem(
                  value: Language.arabic,
                  child: Text('Arabic'),
                ),
                PopupMenuItem(
                  value: Language.urdu,
                  child: Text('Urdu'),
                ),
                PopupMenuItem(
                  value: Language.hindi,
                  child: Text('Hindi'),
                ),
              ],
            );
          },
        )
      ],
      backgroundColor: CColors.lightColor,
    );
  }
}

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CColors.lightColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              AppLocalizations.of(context)!.calculator,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            DrawerItems(
              onPress: (){
                Navigator.pushNamed(context, CRoutes.standardScreen);
              },
              icon: Icons.calculate_outlined,
              itemName: AppLocalizations.of(context)!.standard,
            ),
            DrawerItems(
              onPress: (){
                Navigator.pushNamed(context, CRoutes.scientificScreen);
              },
              icon: Icons.science_outlined,
              itemName: AppLocalizations.of(context)!.scientific,
            ),
            DrawerItems(
              onPress: (){
                Navigator.pushNamed(context, CRoutes.programmerScreen);
              },
              icon: Icons.code_outlined,
              itemName: AppLocalizations.of(context)!.programmer,
            ),
            DrawerItems(
              onPress: (){
                Navigator.pushNamed(context, CRoutes.date_calculationScreen);
              },
              icon: Icons.calendar_month_outlined,
              itemName: AppLocalizations.of(context)!.date_calculation,
            ),
            Text(
              AppLocalizations.of(context)!.converter,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.currencyScreen);
                },
                icon: Icons.currency_exchange_outlined,
                itemName: AppLocalizations.of(context)!.currency),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.volumeScreen);
                },
                icon: Icons.unfold_less_outlined,
                itemName: AppLocalizations.of(context)!.volume),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.lengthScreen);
                },
                icon: Icons.straighten_outlined,
                itemName: AppLocalizations.of(context)!.length),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.weight_and_massScreen);
                },
                icon: Icons.fitness_center_outlined,
                itemName: AppLocalizations.of(context)!.weight_and_mass),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.temperatureScreen);
                },
                icon: Icons.thermostat_outlined,
                itemName: AppLocalizations.of(context)!.temperature),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.energyScreen);
                },
                icon: Icons.local_fire_department_outlined,
                itemName: AppLocalizations.of(context)!.energy),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.areaScreen);
                },
                icon: Icons.grid_4x4,
                itemName: AppLocalizations.of(context)!.area),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.speedScreen);
                },
                icon: Icons.run_circle_outlined,
                itemName: AppLocalizations.of(context)!.speed),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.timeScreen);
                },
                icon: Icons.access_time_outlined,
                itemName: AppLocalizations.of(context)!.time),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.powerScreen);
                },
                icon: Icons.power,
                itemName: AppLocalizations.of(context)!.power),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.dataScreen);
                },
                icon: Icons.sd_storage_outlined,
                itemName: AppLocalizations.of(context)!.data),
            DrawerItems(
                onPress: (){
                  Navigator.pushNamed(context, CRoutes.pressureScreen);
                },
                icon: Icons.speed_outlined,
                itemName: AppLocalizations.of(context)!.pressure),
            DrawerItems(
              onPress: (){
                Navigator.pushNamed(context, CRoutes.angleScreen);
              },
                icon: Icons.text_rotation_angleup_outlined,
                itemName: AppLocalizations.of(context)!.angle),
          ],
        ),
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
   DrawerItems({
    super.key,
    required this.icon,
    required this.itemName,
    required this.onPress,
  });

  final IconData icon;
  final String itemName;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        itemName,
        // AppLocalizations.of(context)!.standard,
        style: TextStyle(color: CColors.textColor),
      ),
      leading: Icon(
        icon,
        color: CColors.textColor,
      ),
      onTap: onPress,
    );
  }
}
