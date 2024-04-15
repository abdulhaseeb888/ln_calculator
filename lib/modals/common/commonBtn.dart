import 'package:flutter/material.dart';
import 'package:ln_calculator/constraints/c_colors.dart';

class CommonBtn extends StatefulWidget {
  const CommonBtn({
    Key? key,
    required this.num,
    required this.onPressed,
  }) : super(key: key);

  final String num;
  final VoidCallback onPressed;

  @override
  State<CommonBtn> createState() => _CommonBtnState();
}

class _CommonBtnState extends State<CommonBtn> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          width: 100,
          height: 60,
          decoration: BoxDecoration(
            color: CColors.lightColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              widget.num,
              style: TextStyle(color: CColors.textColor, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
