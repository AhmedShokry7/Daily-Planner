import 'package:daily_planner/core/strings.dart';
import 'package:flutter/material.dart';

class NextOrBackBtn extends StatelessWidget {
  const NextOrBackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final myHight = MediaQuery.of(context).size.height;
    return Container(
      height: myHight * .07,
      width: myHight * .07,
      decoration: const BoxDecoration(
        color: kBlueColor,
        shape: BoxShape.circle,
      ),
      child: Icon(Icons.arrow_forward_rounded, size: myHight * .03),
    );
  }
}
