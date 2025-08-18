import 'package:daily_planner/core/strings.dart';
import 'package:daily_planner/core/data/on_boarding_list.dart';
import 'package:flutter/material.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({super.key});

  @override
  Widget build(BuildContext context) {
    final myHight = MediaQuery.of(context).size.height;
    final myWidth = MediaQuery.of(context).size.width;

    PageController pageController = PageController(initialPage: currentPage);
    return PageView.builder(
      controller: pageController,
      onPageChanged: (value) {
        currentPage = value;
      },
      scrollDirection: Axis.horizontal,
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(onBoardingList[index].image),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: myWidth * .05),
            child: Text(
              textAlign: TextAlign.center,
              onBoardingList[index].title,
              style: TextStyle(
                fontSize: myHight * .025,
                fontWeight: FontWeight.bold,
                color: kBlueColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: myWidth * .05),
            child: Text(
              textAlign: TextAlign.center,
              onBoardingList[index].body,
              style: TextStyle(
                fontSize: myHight * .018,
                fontWeight: FontWeight.w600,
                color: kGreyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
