import 'package:daily_planner/core/strings.dart';
import 'package:daily_planner/ui/widgets/app_bar_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppBarBtn(image: sideBar),
          Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: kdarkBlueColor,
            ),
          ),
          const AppBarBtn(image: notifications),
        ],
      ),
    );
  }
}
