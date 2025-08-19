import 'package:daily_planner/core/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectsContainerListview extends StatelessWidget {
  const ProjectsContainerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => ProjectsContainerBody(),
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(width: 8.w),
      ),
    );
  }
}

class ProjectsContainerBody extends StatelessWidget {
  const ProjectsContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      width: 250.w,
      height: 150.h,
      decoration: BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Application Design",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            ),
          ),
          Text(
            "UI Design kit",
            style: TextStyle(fontSize: 14.sp, color: kWhiteColor),
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Text(
                  "50/80",
                  style: TextStyle(fontSize: 14.sp, color: kWhiteColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
