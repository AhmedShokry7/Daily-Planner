import 'package:daily_planner/core/strings.dart';
import 'package:flutter/material.dart';

class AppBarBtn extends StatelessWidget {
  final String image;
  const AppBarBtn({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final myHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        height: myHeight * .06,
        width: myHeight * .06,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: kBorderColor),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
