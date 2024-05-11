import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ln_calculator/constraints/c_colors.dart';
import 'package:ln_calculator/modals/common/c_app_bar.dart';
import 'package:ln_calculator/modals/common/commonBtn.dart';

class Energy extends StatefulWidget {
  const Energy({super.key});

  @override
  State<Energy> createState() => _EnergyState();
}

class _EnergyState extends State<Energy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        appBarTitle: AppLocalizations.of(context)!.energy,
      ),
      drawer: DrawerWidget(),
      backgroundColor: CColors.BGColor,
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '0',
                style: TextStyle(
                  color: CColors.textColor,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Joules',
                  style: TextStyle(color: CColors.textColor),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: CColors.textColor,
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '0',
                style: TextStyle(
                  color: CColors.textColor,
                  fontSize: 48,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Food calories',
                  style: TextStyle(color: CColors.textColor),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: CColors.textColor,
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            // Fifth Row
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
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            // Fourth Row
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
