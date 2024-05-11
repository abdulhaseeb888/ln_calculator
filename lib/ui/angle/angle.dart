import 'package:flutter/material.dart';
import 'package:ln_calculator/modals/common/c_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ln_calculator/modals/common/providers/angle_provider.dart';
import 'package:provider/provider.dart';

import '../../constraints/c_colors.dart';
import '../../modals/common/commonBtn.dart';

class Angle extends StatefulWidget {
  const Angle({super.key});

  @override
  State<Angle> createState() => _AngleState();
}

class _AngleState extends State<Angle> {
  String selectedOption1 = 'Degrees';
  String selectedOption2 = 'Radians';
  List<String> options = ['Degrees', 'Radians', 'Gradians'];
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();

  @override
  void dispose() {
    _textEditingController1.dispose();
    _textEditingController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var angleProvider = Provider.of<AngleProvider>(context, listen: false);
    return Scaffold(
      appBar: CAppBar(appBarTitle: AppLocalizations.of(context)!.angle),
      drawer: DrawerWidget(),
      backgroundColor: CColors.BGColor,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Consumer<AngleProvider>(
                builder: (context, value, child) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      value.input.text,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Text(
                  selectedOption1,
                  style: TextStyle(
                    color: CColors.textColor,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                  PopupMenuButton(
                  // Input
                  onSelected: (value) {
                    setState(() {
                      selectedOption1 = value;
                    });
                    angleProvider.setSelectedOption1(value);
                   // angleProvider.convertToDegree(value);
                  },
                  itemBuilder: (BuildContext context) {
                    return options.map((String option) {
                      return PopupMenuItem(
                        value: option,
                        child: Text(
                          option,
                        ),
                      );
                    }).toList();
                  },
                  child: Icon(Icons.keyboard_arrow_down_outlined),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Consumer<AngleProvider>(
                builder: (context, value, child) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      double.parse(value.outPut.text).toStringAsFixed(6),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  selectedOption2,
                  style: TextStyle(
                      color: Colors
                          .black), // Change CColors.textColor to Colors.black
                ),
                SizedBox(width: 5.0),
                // Output
                PopupMenuButton(
                  onSelected: (value) {
                    setState(() {
                      selectedOption2 = value;
                    });
                    angleProvider.setSelectedOption2(value);
                    // if(value == 'Radians'){
                    //   angleProvider.degreeToRadians();
                    // } else if(value == 'Gradians'){
                    //   angleProvider.degreeToGradians();
                    // } else{
                    //   angleProvider.degreeToDegrees();
                    // }
                  },
                  itemBuilder: (BuildContext context) {
                    return options.map(( option) {
                      return PopupMenuItem(
                        value: option,
                        child: Text(
                          option,
                        ),
                      );
                    }).toList();
                  },
                  child: Icon(Icons.keyboard_arrow_down_outlined),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
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
                  onPressed: () {
                    angleProvider.cleanAll();
                  },
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  path: 'assets/icons/backSpace.svg',
                  onPressed: () {
                    angleProvider.backSpace();
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
                  onPressed: () {
                    angleProvider.appendText('7');
                  },
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.eight,
                  onPressed: () {
                    angleProvider.appendText('8');
                  },
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.nine,
                  onPressed: () {
                    angleProvider.appendText('9');
                  },
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
                  onPressed: () {
                    angleProvider.appendText('4');
                  },
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.five,
                  onPressed: () {
                    angleProvider.appendText('5');
                  },
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.six,
                  onPressed: () {
                    angleProvider.appendText('6');
                  },
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
                  onPressed: () {
                    angleProvider.appendText('1');
                  },
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.two,
                  onPressed: () {
                    angleProvider.appendText('2');
                  },
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.three,
                  onPressed: () {
                    angleProvider.appendText('3');
                  },
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
                  num: '=',
                  onPressed: angleProvider.calculateNew,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.zero,
                  onPressed: () {
                    angleProvider.appendText('0');
                  },
                ),
                const SizedBox(
                  width: 5.0,
                ),
                CommonBtn(
                  num: AppLocalizations.of(context)!.period,
                  onPressed: () {
                    angleProvider.appendText('.');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
