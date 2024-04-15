import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constraints/c_colors.dart';

class CommonFnBtn extends StatelessWidget {
  const CommonFnBtn({
    Key? key,
    this.number,
    this.path,
    required this.onPressed,
  }) : super(key: key);

  final String? number;
  final String? path;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: 100,
          height: 60,
          decoration: BoxDecoration(
            color: CColors.fnBtnColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: number != null
                ? Text(
                    number!,
                    style: TextStyle(
                        color: CColors.textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                : path != null
                    ? SvgPicture.asset(
                        path!,
                        width: 20,
                        height: 20,
                      )
                    : SizedBox(),
          ),
        ),
      ),
    );
  }
}
