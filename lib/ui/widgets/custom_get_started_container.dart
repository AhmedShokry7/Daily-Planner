import 'package:daily_planner/core/strings.dart';
import 'package:daily_planner/ui/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class GetStartedContainer extends StatelessWidget {
  const GetStartedContainer({super.key});

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
          const TitleText(),
          SizedBox(height: myHight * .015),
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
          const Spacer(),
        ],
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final myHight = MediaQuery.of(context).size.height;
    return Text(
      textAlign: TextAlign.center,
      "Welcome to Daily Planner App",
      style: TextStyle(
        fontSize: myHight * .03,
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
    final myHight = MediaQuery.of(context).size.height;
    return Text(
      textAlign: TextAlign.center,
      "Daily Planner - Organize Your Day. Boost Productivity with Notes, Reminders & Tasks",
      style: TextStyle(
        fontSize: myHight * .02,
        fontWeight: FontWeight.w500,
        color: kWhiteColor,
      ),
    );
  }
}
