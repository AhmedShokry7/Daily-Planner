import 'package:daily_planner/core/strings.dart';
import 'package:flutter/material.dart';

class SkipBtn extends StatelessWidget {
  const SkipBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              bottomNavigationBarView,
              (route) => false,
            );
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              "Skip",
              style: TextStyle(
                color: kGreyColor,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
