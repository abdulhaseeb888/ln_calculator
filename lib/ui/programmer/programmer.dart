import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ln_calculator/constraints/c_colors.dart';
import 'package:ln_calculator/modals/common/c_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ln_calculator/modals/common/commonBtn.dart';

class Programmer extends StatefulWidget {
  const Programmer({super.key});

  @override
  State<Programmer> createState() => _ProgrammerState();
}

class _ProgrammerState extends State<Programmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        appBarTitle: AppLocalizations.of(context)!.programmer,
      ),
      drawer: DrawerWidget(),
      backgroundColor: CColors.BGColor,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Align(
                alignment: FractionalOffset.bottomRight,
                child: Text(
                  '0',
                  style: TextStyle(
                    fontSize: 48.0,
                    color: CColors.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5.0,
                ),
                SizedBox(
                  height: 35,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'HEX',
                      style: TextStyle(color: CColors.textColor),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  '0',
                  style: TextStyle(color: CColors.textColor),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5.0,
                ),
                SizedBox(
                  height: 35,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'DEC',
                      style: TextStyle(color: CColors.textColor),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  '0',
                  style: TextStyle(color: CColors.textColor),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5.0,
                ),
                SizedBox(
                  height: 35,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'OCT',
                      style: TextStyle(color: CColors.textColor),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  '0',
                  style: TextStyle(color: CColors.textColor),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5.0,
                ),
                SizedBox(
                  height: 35,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'BIN',
                      style: TextStyle(color: CColors.textColor),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  '0',
                  style: TextStyle(color: CColors.textColor),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            // Buttons and Bitwise Screen
            Row(
              children: [
                const SizedBox(
                  width: 40.0,
                ),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/buttonsSymbol.svg',
                    width: 20,
                    height: 20,
                    color: CColors.textColor,
                  ),
                ),
                const SizedBox(
                  width: 60.0,
                ),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/bitwiseButtons.svg',
                    width: 20,
                    height: 20,
                    color: CColors.textColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            // Bitwise
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                SvgPicture.asset(
                  'assets/icons/Bitwise.svg',
                  width: 20,
                  height: 20,
                  color: CColors.textColor,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Bitwise',
                  style: TextStyle(color: CColors.textColor),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                DropdownButton(
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: CColors.textColor,
                  ),
                  items: [],
                  onChanged: (value) {},
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            // Sixth Row
            Row(
              children: [
                CommonBtn(
                  num: 'A',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: '<<',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: '>>',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: 'C',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  path: 'assets/icons/backSpace.svg',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            // Fifth Row
            Row(
              children: [
                CommonBtn(
                  num: 'B',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: '(',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: ')',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: '%',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: '/',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
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
                  num: 'C',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
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
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: '*',
                  color: CColors.fnBtnColor,
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
                  num: 'D',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
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
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: '-',
                  color: CColors.fnBtnColor,
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
                  color: CColors.fnBtnColor,
                  num: 'E',
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
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
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: '+',
                  color: CColors.fnBtnColor,
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
                  num: 'F',
                  color: CColors.fnBtnColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: '+/-',
                  onPressed: () {},
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
                  color: Colors.white,
                  num: AppLocalizations.of(context)!.period,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: '=',
                  onPressed: () {},
                  color: CColors.fnBtnColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
