import 'package:flutter/material.dart';
import 'package:ln_calculator/constraints/c_colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ln_calculator/modals/common/providers/language_change_controller.dart';
import 'package:provider/provider.dart';

enum Language { english, spanish, russian, chinese, arabic, urdu, hindi }

// CAppBar widget
class CAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CAppBar({Key? key}) : super(key: key);

  @override
  State<CAppBar> createState() => _CAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _CAppBarState extends State<CAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        AppLocalizations.of(context)!.calculator,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: CColors.textColor,
          fontSize: 12,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: IconButton(
          onPressed: () {},
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
