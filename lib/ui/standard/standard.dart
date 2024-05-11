import 'package:flutter/material.dart';
import 'package:ln_calculator/constraints/c_colors.dart';
import 'package:ln_calculator/modals/common/c_app_bar.dart';
import 'package:ln_calculator/modals/common/commonBtn.dart';
import 'package:ln_calculator/modals/common/providers/commonBtnProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Standard extends StatefulWidget {
  const Standard({Key? key}) : super(key: key);

  @override
  State<Standard> createState() => _StandardState();
}

class _StandardState extends State<Standard> {
  TextEditingController _textController = TextEditingController();
  bool _isExpanded = false;


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
    commonBtnProvider.setContext(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CAppBar(appBarTitle: AppLocalizations.of(context)!.standard,),
      drawer: DrawerWidget(),
      backgroundColor: CColors.BGColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              height: _isExpanded ? MediaQuery.of(context).size.height  : MediaQuery.of(context).size.height * 0.45,
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: CColors.displayAns,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                          debugPrint(value.input.text);
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
                          debugPrint(value.input.text);
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
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const SizedBox(width: 5),
              CommonBtn(
                num: '%',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.appendText('%');
                },
              ),
              const SizedBox(width: 5),
              CommonBtn(
                num: 'CE',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.cleanAll();
                },
              ),
              const SizedBox(width: 5),
              CommonBtn(
                num: 'C',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.clean();
                },
              ),
              const SizedBox(width: 5),
              CommonBtn(
                path: 'assets/icons/backSpace.svg',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.backSpace();
                },
              ),
              const SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 5),
          // Fifth Row
          Row(
            children: [
              const SizedBox(width: 5),
              CommonBtn(
                path: 'assets/icons/1overX.svg',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.oneOverX();
                },
              ),
              const SizedBox(width: 5),
              CommonBtn(
                path: 'assets/icons/squareRoot2.svg',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.calculateSquar();
                },
              ),
              const SizedBox(width: 5),
              CommonBtn(
                path: 'assets/icons/underRoot2.svg',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.calculateSquardRoot();
                },
              ),
              const SizedBox(width: 5),
              CommonBtn(
                num: '/',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.appendText('/');
                  commonBtnProvider.calculate();
                },
              ),
              const SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 5),
          // Fourth Row
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
              CommonBtn(
                num: '*',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.appendText('*');
                  commonBtnProvider.calculate();
                },
              ),
              const SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 5),
          // Third Row
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
              CommonBtn(
                num: '-',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.appendText('-');
                  commonBtnProvider.calculate();
                },
              ),
              const SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 5),
          // Second Row
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
              CommonBtn(
                num: '+',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.appendText('+');
                  commonBtnProvider.calculate();
                },
              ),
              const SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 5),
          // First Row
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
              CommonBtn(
                num: '=',
                color: CColors.fnBtnColor,
                onPressed: () {
                  commonBtnProvider.calculate();
                },
              ),
              const SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
