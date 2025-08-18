import 'package:daily_planner/core/strings.dart';
import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? backGroundColor;
  final Color? textColor;
  const CustomMaterialButton({
    super.key,
    this.onPressed,
    required this.text,
    this.backGroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final myHight = MediaQuery.of(context).size.height;
    final myWidth = MediaQuery.of(context).size.width;
    return MaterialButton(
      height: myHight * .07,
      minWidth: myWidth,
      color: backGroundColor ?? kBlueColor,
      textColor: textColor ?? kWhiteColor,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: myHight * .025, fontWeight: FontWeight.bold),
      ),
    );
  }
}
