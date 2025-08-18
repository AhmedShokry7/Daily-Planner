import 'package:daily_planner/core/strings.dart';
import 'package:flutter/material.dart';

class NextOrBackBtn extends StatelessWidget {
  final IconData? icon;
  final Color? color;
  const NextOrBackBtn({super.key, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    int i = 1;
    final myHight = MediaQuery.of(context).size.height;
    return Container(
      height: myHight * .07,
      width: myHight * .07,
      decoration: BoxDecoration(
        color: i == 0 ? kBlueColor : null,
        border: i != 0 ? Border.all(color: kBlueColor, width: 2) : null,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon ?? Icons.arrow_forward_rounded,
        size: myHight * .03,
        color: color,
      ),
    );
  }
}
