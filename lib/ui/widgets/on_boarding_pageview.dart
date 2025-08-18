import 'package:daily_planner/core/cubits/cubit/on_boarding_cubit.dart';
import 'package:daily_planner/core/data/on_boarding_list.dart';
import 'package:daily_planner/core/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({super.key});

  @override
  Widget build(BuildContext context) {
    final myHight = MediaQuery.of(context).size.height;
    final myWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<OnBoardingCubit>(context);
        return PageView.builder(
          controller: cubit.pageController,
          onPageChanged: (value) {
            cubit.changePage(value);
          },
          scrollDirection: Axis.horizontal,
          itemCount: onBoardingList.length,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: myHight * .01),
              Image.asset(onBoardingList[index].image),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: myWidth * .05,
                  vertical: myHight * .02,
                ),
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
      },
    );
  }
}
