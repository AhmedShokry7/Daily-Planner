import 'package:daily_planner/core/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomAppBarBtn(image: sideBar),
        Text(
          "Friday, 26",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: kdarkBlueColor,
          ),
        ),
        const CustomAppBarBtn(image: notifications),
      ],
    );
  }
}

class CustomAppBarBtn extends StatelessWidget {
  final String image;
  const CustomAppBarBtn({super.key, required this.image});

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
