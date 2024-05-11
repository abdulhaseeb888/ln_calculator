import 'package:flutter/material.dart';
import 'package:ln_calculator/constraints/c_colors.dart';
import 'package:ln_calculator/modals/common/c_app_bar.dart';
import 'package:ln_calculator/modals/common/commonBtn.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Length extends StatefulWidget {
  const Length({super.key});

  @override
  State<Length> createState() => _LengthState();
}

class _LengthState extends State<Length> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(appBarTitle: 'Length'),
      drawer: DrawerWidget(),
      backgroundColor: CColors.BGColor,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                '0',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: CColors.textColor,
                  fontSize: 48,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Inches',
                  style: TextStyle(
                    color: CColors.textColor,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: CColors.textColor,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                '0',
                style: TextStyle(
                  color: CColors.textColor,
                  fontSize: 48,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Centimeters',
                  style: TextStyle(
                    color: CColors.textColor,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: CColors.textColor,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                CommonBtn(
                  color: CColors.BGColor,
                ),
                SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: 'CE',
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  path: 'assets/icons/backSpace.svg',
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                CommonBtn(
                  num: AppLocalizations.of(context)!.seven,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.eight,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.nine,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            // Third Row
            Row(
              children: [
                CommonBtn(
                  num: AppLocalizations.of(context)!.four,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.five,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.six,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            // Second Row
            Row(
              children: [
                CommonBtn(
                  num: AppLocalizations.of(context)!.one,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.two,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.three,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            // First Row
            Row(
              children: [
                CommonBtn(
                  color: CColors.BGColor,
                ),
                SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.zero,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.period,
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
