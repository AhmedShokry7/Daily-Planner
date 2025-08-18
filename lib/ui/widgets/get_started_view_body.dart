import 'package:daily_planner/core/strings.dart';
import 'package:daily_planner/ui/widgets/custom_get_started_container.dart';
import 'package:flutter/material.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Expanded(child: Image.asset(getStartedImage)),
          const Expanded(child: GetStartedContainer()),
        ],
      ),
    );
  }
}
