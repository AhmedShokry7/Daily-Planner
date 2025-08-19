import 'package:daily_planner/core/cubits/cubit/on_boarding_cubit.dart';
import 'package:daily_planner/core/data/on_boarding_list.dart';
import 'package:daily_planner/core/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<OnBoardingCubit>(context);
        return PageView.builder(
          controller: cubit.pageController,
          onPageChanged: (value) => cubit.changePage(value),
          scrollDirection: Axis.horizontal,
          itemCount: onBoardingList.length,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(onBoardingList[index].image),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
                child: Text(
                  textAlign: TextAlign.center,
                  onBoardingList[index].title,
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: kBlueColor,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text(
                  textAlign: TextAlign.center,
                  onBoardingList[index].body,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
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
