import 'package:daily_planner/core/strings.dart';
import 'package:daily_planner/ui/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class CustomGetStartedContainer extends StatelessWidget {
  const CustomGetStartedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final myHight = MediaQuery.of(context).size.height;
    final myWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: myHight * 0.05,
        horizontal: myWidth * .06,
      ),
      width: myWidth,
      decoration: const BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            "Welcome to Daily Planner App",
            style: TextStyle(
              fontSize: myHight * .03,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            ),
          ),
          SizedBox(height: myHight * .015),
          Text(
            textAlign: TextAlign.center,
            "Daily Planner - Organize Your Day. Boost Productivity with Notes, Reminders & Tasks",
            style: TextStyle(
              fontSize: myHight * .02,
              fontWeight: FontWeight.w500,
              color: kWhiteColor,
            ),
          ),
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
          const Spacer(),
        ],
      ),
    );
  }
}
