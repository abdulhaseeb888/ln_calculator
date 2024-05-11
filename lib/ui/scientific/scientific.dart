import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ln_calculator/constraints/c_colors.dart';
import 'package:ln_calculator/modals/common/c_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../modals/common/commonBtn.dart';

class Scientific extends StatefulWidget {
  const Scientific({Key? key}) : super(key: key);

  @override
  State<Scientific> createState() => _ScientificState();
}

class _ScientificState extends State<Scientific> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:  CAppBar(appBarTitle: AppLocalizations.of(context)!.scientific,),
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
              height: _isExpanded ? MediaQuery.of(context).size.height  : MediaQuery.of(context).size.height * 0.35,
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
                      Text(
                        'value.input.text',
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        'value.output.text',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
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
          // Trigonometry
          Row(
            children: [
              const SizedBox(
                width: 5.0,
              ),
              SvgPicture.asset('assets/icons/triangle.svg'),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                'Trigonometry',
                style: TextStyle(color: CColors.textColor),
              ),
              PopupMenuButton<String>(
                icon: Icon(Icons.keyboard_arrow_down_outlined),
                itemBuilder: (context) => [
                  PopupMenuItem<String>(
                    child: Text('item1'),
                    value: 'item1',
                  ),
                  PopupMenuItem<String>(
                    child: Text('item2'),
                    value: 'item2',
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          // Seventh Row
          Row(
            children: [
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                path: 'assets/icons/2nd.svg',
                color: CColors.fnBtnColor,
                onPressed: () {},
              ),
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                path: 'assets/icons/pi.svg',
                color: CColors.fnBtnColor,
                onPressed: () {},
              ),
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                num: 'e',
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
                color: CColors.fnBtnColor,
                path: 'assets/icons/backSpace.svg',
                onPressed: () {},
              ),
              const SizedBox(
                width: 5.0,
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          // Sixth Row
          Row(
            children: [
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                color: CColors.fnBtnColor,
                path: 'assets/icons/squareRoot2.svg',
                onPressed: () {},
              ),
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                num: '1/x',
                color: CColors.fnBtnColor,
                onPressed: () {},
              ),
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                num: '|x|',
                color: CColors.fnBtnColor,
                onPressed: () {},
              ),
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                num: 'exp',
                color: CColors.fnBtnColor,
                onPressed: () {},
              ),
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                num: 'mod',
                color: CColors.fnBtnColor,
                onPressed: () {},
              ),
              const SizedBox(
                width: 5.0,
              )
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          // Fifth Row
          Row(
            children: [
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                path: 'assets/icons/underRoot2.svg',
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
                num: 'n!',
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
              const SizedBox(
                width: 5.0,
              )
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          // Fourth Row
          Row(
            children: [
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                path: 'assets/icons/x_pow_y.svg',
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
              const SizedBox(
                width: 5.0,
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          // Third Row
          Row(
            children: [
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                path: 'assets/icons/10^x.svg',
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
              const SizedBox(
                width: 5.0,
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          // Second Row
          Row(
            children: [
              const SizedBox(
                width: 5.0,
              ),
              CommonBtn(
                num: 'log',
                color: CColors.fnBtnColor,
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
                color: CColors.fnBtnColor,
                num: '+',
                onPressed: () {},
              ),
              const SizedBox(
                width: 5.0,
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          // First Row
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              CommonBtn(
                num: 'ln',
                color: CColors.fnBtnColor,
                onPressed: () {},
              ),
              const SizedBox(width: 5),
              CommonBtn(
                num: '+/-',
                onPressed: () {},
              ),
              const SizedBox(width: 5),
              CommonBtn(
                num: AppLocalizations.of(context)!.zero,
                onPressed: () {},
              ),
              const SizedBox(width: 5),
              CommonBtn(
                num: AppLocalizations.of(context)!.period,
                onPressed: () {},
              ),
              const SizedBox(width: 5),
              CommonBtn(
                num: '=',
                color: CColors.fnBtnColor,
                onPressed: () {},
              ),
              const SizedBox(width: 5),
            ],
          ),
          const SizedBox(
            height: 5.0,
          )
        ],
      ),
    );
  }
}
