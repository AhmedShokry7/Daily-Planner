import 'package:daily_planner/core/strings.dart';
import 'package:daily_planner/ui/widgets/next_or_back_btn.dart';
import 'package:flutter/material.dart';

class OnBoardingButtonsAndSliderDotes extends StatelessWidget {
  const OnBoardingButtonsAndSliderDotes({super.key});

  @override
  Widget build(BuildContext context) {
    final myHight = MediaQuery.of(context).size.height;
    final myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: myWidth * .05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NextOrBackBtn(),
          Row(
            children: [
              ...List.generate(
                3,
                (context) => AnimatedContainer(
                  margin: EdgeInsets.only(right: 8),
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(color: kBlueColor),
                  duration: Duration(milliseconds: 500),
                ),
              ),
            ],
          ),
          NextOrBackBtn(),
        ],
      ),
    );
  }
}
