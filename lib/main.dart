import 'package:daily_planner/core/strings.dart';
import 'package:daily_planner/ui/views/bootm_navigation_bar_view.dart';
import 'package:daily_planner/ui/views/get_started_view.dart';
import 'package:daily_planner/ui/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DailyPlanner());
}

class DailyPlanner extends StatelessWidget {
  const DailyPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Poppins",
      ),
      initialRoute: getStartedView,
      routes: {
        getStartedView: (context) => const GetStartedView(),
        onSplashView: (context) => const OnBoardingView(),
        bottomNavigationBarView: (context) => const BootmNavigationBarView(),
      },
    );
  }
}
