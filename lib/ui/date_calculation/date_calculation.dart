import 'package:flutter/material.dart';
import 'package:ln_calculator/constraints/c_colors.dart';
import 'package:ln_calculator/modals/common/c_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DateCalculation extends StatefulWidget {
  const DateCalculation({super.key});

  @override
  State<DateCalculation> createState() => _DateCalculationState();
}

class _DateCalculationState extends State<DateCalculation> {
  final String diffBtwDates = 'Difference between dates';
  final String addSubDays = 'Add or subtract days';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CAppBar(appBarTitle: AppLocalizations.of(context)!.date_calculation),
      drawer: DrawerWidget(),
      backgroundColor: CColors.BGColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,

                ),
                icon: Icon(Icons.keyboard_arrow_down_outlined),
                isExpanded: true,
                value: diffBtwDates.toString(),
                items: [
                  DropdownMenuItem(child: Text(diffBtwDates),value: diffBtwDates,),
                  DropdownMenuItem(child: Text(addSubDays), value: addSubDays,),
                ],
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: 30.0,),
            Text('From'),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Text('April 27, 2024', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Icon(Icons.date_range,),
              ],
            ),
            SizedBox(height: 30.0,),
            Text('To'),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Text('April 27, 2024', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Icon(Icons.date_range,),
              ],
            ),
            SizedBox(height: 30.0,),
            Text('Difference'),
            Text('Same dates', style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
