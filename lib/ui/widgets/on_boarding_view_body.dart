import 'package:daily_planner/ui/widgets/on_boarding_buttons_and_slider_dotes.dart';
import 'package:daily_planner/ui/widgets/on_boarding_pageview.dart';
import 'package:daily_planner/ui/widgets/skip_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 8.h),
          const SkipBtn(),
          const Expanded(flex: 4, child: OnBoardingPageview()),
          const Expanded(child: OnBoardingButtonsAndSliderDotes()),
        ],
      ),
    );
  }
}
