import 'package:daily_planner/ui/widgets/on_boarding_buttons_and_slider_dotes.dart';
import 'package:daily_planner/ui/widgets/on_boarding_pageview.dart';
import 'package:daily_planner/ui/widgets/skip_btn.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SkipBtn(),
          SizedBox(height: 24),
          Expanded(flex: 3, child: OnBoardingPageview()),
          Expanded(child: OnBoardingButtonsAndSliderDotes()),
        ],
      ),
    );
  }
}
