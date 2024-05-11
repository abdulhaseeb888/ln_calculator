import 'package:flutter/material.dart';
import 'package:ln_calculator/constraints/c_colors.dart';
import 'package:ln_calculator/modals/common/c_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ln_calculator/ui/currency/common/currency_btn.dart';

class Currency extends StatefulWidget {
  const Currency({super.key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(appBarTitle: AppLocalizations.of(context)!.currency),
      drawer: DrawerWidget(),
      backgroundColor: CColors.BGColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '0',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'United States - Dollar',
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text(
                  '€',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  '0',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 15.0,
            ),
            Row(
              children: [
                Text(
                  'Europe - Euro',
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              '1 USD = 0.9349 EUR',
              style: TextStyle(
                color: CColors.lightColor,
              ),
            ),
            Text(
              'Updated 4/27/2024 11:49 PM',
              style: TextStyle(
                color: CColors.lightColor,
              ),
            ),
            Text(
              'Update rates',
              style: TextStyle(color: Colors.indigo),
            ),
            SizedBox(height: 15.0,),
            // Fifth Row
            Row(
              children: [
                CurrencyBtn(
                  color: CColors.BGColor,
                ),
                SizedBox(
                  width: 5.0,
                ),
                CurrencyBtn(
                  num: 'CE',
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5.0,
                ),
                CurrencyBtn(
                  path: 'assets/icons/backSpace.svg',
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            // Fourth Row
            Row(
              children: [
                CurrencyBtn(
                  num: AppLocalizations.of(context)!.seven,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CurrencyBtn(
                  num: AppLocalizations.of(context)!.eight,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CurrencyBtn(
                  num: AppLocalizations.of(context)!.nine,
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            // Third Row
            Row(
              children: [
                CurrencyBtn(
                  num: AppLocalizations.of(context)!.four,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CurrencyBtn(
                  num: AppLocalizations.of(context)!.five,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CurrencyBtn(
                  num: AppLocalizations.of(context)!.six,
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            // Second Row
            Row(
              children: [
                CurrencyBtn(
                  num: AppLocalizations.of(context)!.one,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CurrencyBtn(
                  num: AppLocalizations.of(context)!.two,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CurrencyBtn(
                  num: AppLocalizations.of(context)!.three,
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            // First Row
            Row(
              children: [
                CurrencyBtn(
                  color: CColors.BGColor,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CurrencyBtn(
                  num: AppLocalizations.of(context)!.zero,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CurrencyBtn(
                  num: AppLocalizations.of(context)!.period,
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
