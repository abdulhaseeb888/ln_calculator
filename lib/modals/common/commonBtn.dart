

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ln_calculator/constraints/c_colors.dart';


class CommonBtn extends StatefulWidget {
  CommonBtn({
    Key? key,
    this.num,
    this.color,
    this.onPressed,
    this.path
  }) : super(key: key);

  final String? num;
  final String? path;
  Color? color ;
  final VoidCallback? onPressed;

  @override
  State<CommonBtn> createState() => _VolumeBtn();
}

class _VolumeBtn extends State<CommonBtn> {
  Color get _defaultColor => CColors.lightColor;

  @override
  Widget build(BuildContext context) {
    final color = widget.color ?? _defaultColor;
    return Expanded(
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: widget.num != null ? Text(
              widget.num.toString(),
              style: TextStyle(color: CColors.textColor, fontSize: 20),
            ) : widget.path != null ? SvgPicture.asset(widget.path.toString()) : SizedBox(),
          ),
        ),
      ),
    );
  }
}
