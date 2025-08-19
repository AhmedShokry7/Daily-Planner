import 'package:daily_planner/ui/widgets/custom_app_bar.dart';
import 'package:daily_planner/ui/widgets/custom_title_text.dart';
import 'package:daily_planner/ui/widgets/projects_container_listview.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: DateFormat("MMM, dd").format(DateTime.now())),
          SizedBox(height: 12.h),
          const CustomTitleText(title: "Let's make a habit together 🙌"),
          SizedBox(height: 12.h),
          const ProjectsContainerListview(),
        ],
      ),
    );
  }
}
