import 'package:daily_planner/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
        children: [
          SafeArea(
            child: CustomAppBar(
              title: DateFormat("MMM, dd").format(DateTime.now()),
            ),
          ),
        ],
      ),
    );
  }
}
