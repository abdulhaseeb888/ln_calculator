import 'package:flutter/material.dart';
import 'package:ln_calculator/constraints/c_colors.dart';
import 'package:ln_calculator/modals/common/c_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ln_calculator/modals/common/commonBtn.dart';

class Volume extends StatefulWidget {
  const Volume({super.key});

  @override
  State<Volume> createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(appBarTitle: AppLocalizations.of(context)!.volume),
      drawer: DrawerWidget(),
      backgroundColor: CColors.BGColor,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                '0',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Teaspoons (US)',
                  style: TextStyle(color: CColors.textColor),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: CColors.textColor,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                '0',
                style: TextStyle(
                  fontSize: 48,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Millititers',
                  style: TextStyle(color: CColors.textColor),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: CColors.textColor,
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                CommonBtn(
                  color: CColors.BGColor,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: 'CE',
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  path: 'assets/icons/backSpace.svg',
                  onPressed: () {

                  },
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            // Fourth Row
            Row(
              children: [
                CommonBtn(
                  num: AppLocalizations.of(context)!.seven,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.eight,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.nine,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            // Third Row
            Row(
              children: [
                CommonBtn(
                  num: AppLocalizations.of(context)!.four,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.five,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.six,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            // Second Row
            Row(
              children: [
                CommonBtn(
                  num: AppLocalizations.of(context)!.one,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.two,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.three,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            // First Row
            Row(
              children: [
                CommonBtn(
                  color: CColors.BGColor,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.zero,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.period,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
