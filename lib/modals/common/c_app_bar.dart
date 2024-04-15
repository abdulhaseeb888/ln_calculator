import 'package:flutter/material.dart';
import 'package:ln_calculator/constraints/c_colors.dart';

class CAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CAppBar({Key? key}) : super(key: key);

  @override
  State<CAppBar> createState() => _CAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _CAppBarState extends State<CAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60,
      elevation: 0,
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )
      ),
      title: Text(
        "Calculator",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: CColors.textColor,
          fontSize: 12,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(10,0,0,0),
        child: IconButton(onPressed: () {

        }, icon: Icon(Icons.menu,color: CColors.textColor, size: 20,)),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.fromLTRB(
            0,0,10,0
          ),
          child: IconButton(
            onPressed: () {},
            icon:  Icon(Icons.language,color: CColors.textColor, size: 20,),
          ),
        )
      ],
      backgroundColor: CColors.lightColor,
    );
  }
}