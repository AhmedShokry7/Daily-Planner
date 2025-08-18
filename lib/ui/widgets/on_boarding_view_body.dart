import 'package:daily_planner/ui/widgets/on_boarding_buttons_and_slider_dotes.dart';
import 'package:daily_planner/ui/widgets/on_boarding_pageview.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(flex: 3, child: OnBoardingPageview()),
          Expanded(child: OnBoardingButtonsAndSliderDotes()),
        ],
      ),
    );
  }
}
