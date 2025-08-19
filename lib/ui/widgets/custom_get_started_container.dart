import 'package:daily_planner/core/strings.dart';
import 'package:daily_planner/ui/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedContainer extends StatelessWidget {
  const GetStartedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 24.w),
      decoration: const BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          const TitleText(),
          SizedBox(height: 12.h),
          const DescriptionText(),
          const Spacer(),
          CustomMaterialButton(
            text: "Get Started",
            textColor: kBlueColor,
            backGroundColor: kWhiteColor,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                onSplashView,
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "Welcome to Daily Planner App",
      style: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: kWhiteColor,
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "Daily Planner - Organize Your Day. Boost Productivity with Notes, Reminders & Tasks",
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: kWhiteColor,
      ),
    );
  }
}
