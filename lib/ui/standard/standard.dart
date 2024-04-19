import 'package:flutter/material.dart';
import 'package:ln_calculator/constraints/c_colors.dart';
import 'package:ln_calculator/modals/common/c_app_bar.dart';
import 'package:ln_calculator/modals/common/commonBtn.dart';
import 'package:ln_calculator/modals/common/providers/commonBtnProvider.dart';
import 'package:ln_calculator/ui/standard/common/commonFnBtn.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Standard extends StatefulWidget {
  const Standard({Key? key}) : super(key: key);

  @override
  State<Standard> createState() => _StandardState();
}

class _StandardState extends State<Standard> {
  TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var commonBtnProvider =
    Provider.of<CommonBtnProvider>(context, listen: false);
    debugPrint("Builder");
    String localizedOutput = commonBtnProvider.langOutPut(context, '');
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CAppBar(),
        backgroundColor: CColors.BGColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery
                    .sizeOf(context)
                    .width,
                decoration: BoxDecoration(
                  gradient: CColors.displayAns,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Consumer<CommonBtnProvider>(
                        builder: (context, value, child) {
                          debugPrint('insider of consumer');
                          return Text(
                            value.input.text,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Consumer<CommonBtnProvider>(
                        builder: (context, value, child) {
                          return Text(
                            value.output.text,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Container(
                          width: 50,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const SizedBox(width: 5),
                CommonFnBtn(
                  number: '%',
                  onPressed: () {
                    commonBtnProvider.appendText('%');
                  },
                ),
                const SizedBox(width: 5),
                CommonFnBtn(
                  number: 'CE',
                  onPressed: () {
                    commonBtnProvider.cleanAll();
                  },
                ),
                const SizedBox(width: 5),
                CommonFnBtn(
                  number: 'C',
                  onPressed: () {
                    commonBtnProvider.clean();
                  },
                ),
                const SizedBox(width: 5),
                CommonFnBtn(
                  path: 'assets/icons/standard_icons/backSpace.svg',
                  onPressed: () {
                    commonBtnProvider.backSpace();
                  },
                ),
                const SizedBox(width: 5),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const SizedBox(width: 5),
                CommonFnBtn(
                  path: 'assets/icons/standard_icons/1overX.svg',
                  onPressed: () {
                    // Add logic for 1/X button
                  },
                ),
                const SizedBox(width: 5),
                CommonFnBtn(
                  path: 'assets/icons/standard_icons/squareRoot2.svg',
                  onPressed: () {
                    // Add logic for square root button
                  },
                ),
                const SizedBox(width: 5),
                CommonFnBtn(
                  path: 'assets/icons/standard_icons/underRoot2.svg',
                  onPressed: () {
                    // Add logic for under root button
                  },
                ),
                const SizedBox(width: 5),
                CommonFnBtn(
                  number: '/',
                  onPressed: () {
                    commonBtnProvider.appendText('/');
                    commonBtnProvider.calculate();
                  },
                ),
                const SizedBox(width: 5),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.seven,
                  onPressed: () {
                    commonBtnProvider.appendText('7');
                  },
                ),
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.eight,
                  onPressed: () {
                    commonBtnProvider.appendText('8');
                  },
                ),
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.nine,
                  onPressed: () {
                    commonBtnProvider.appendText('9');
                  },
                ),
                const SizedBox(width: 5),
                CommonFnBtn(
                  number: '*',
                  onPressed: () {
                    commonBtnProvider.appendText('*');
                    commonBtnProvider.calculate();
                  },
                ),
                const SizedBox(width: 5),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.four,
                  onPressed: () {
                    commonBtnProvider.appendText('4');
                  },
                ),
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.five,
                  onPressed: () {
                    commonBtnProvider.appendText('5');
                  },
                ),
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.six,
                  onPressed: () {
                    commonBtnProvider.appendText('6');
                  },
                ),
                const SizedBox(width: 5),
                CommonFnBtn(
                  number: '-',
                  onPressed: () {
                    commonBtnProvider.appendText('-');
                    commonBtnProvider.calculate();
                  },
                ),
                const SizedBox(width: 5),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.one,
                  onPressed: () {
                    commonBtnProvider.appendText('1');
                  },
                ),
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.two,
                  onPressed: () {
                    commonBtnProvider.appendText('2');
                  },
                ),
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.three,
                  onPressed: () {
                    commonBtnProvider.appendText('3');
                  },
                ),
                const SizedBox(width: 5),
                CommonFnBtn(
                  number: '+',
                  onPressed: () {
                    commonBtnProvider.appendText('+');
                    commonBtnProvider.calculate();
                  },
                ),
                const SizedBox(width: 5),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.doubleZero,
                  onPressed: () {
                    commonBtnProvider.appendText('00');
                  },
                ),
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.zero,
                  onPressed: () {
                    commonBtnProvider.appendText('0');
                  },
                ),
                const SizedBox(width: 5),
                CommonBtn(
                  num: AppLocalizations.of(context)!.period,
                  onPressed: () {
                    commonBtnProvider.appendText('.');
                  },
                ),
                const SizedBox(width: 5),
                CommonFnBtn(
                  number: '=',
                  onPressed: () {
                    commonBtnProvider.calculate();
                  },
                ),
                const SizedBox(width: 5),
              ],
            ),
            const SizedBox(height: 5),
          ],
        ));
  }
}
