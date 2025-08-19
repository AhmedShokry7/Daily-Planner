import 'package:daily_planner/core/cubits/cubit/on_boarding_cubit.dart';
import 'package:daily_planner/core/data/on_boarding_list.dart';
import 'package:daily_planner/core/strings.dart';
import 'package:daily_planner/ui/widgets/next_or_back_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingButtonsAndSliderDotes extends StatelessWidget {
  const OnBoardingButtonsAndSliderDotes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        int currentPage = 0;
        if (state is OnBoardingPageChanged) {
          currentPage = state.currentPage;
        }
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              currentPage != 0 ? const BackBtn() : SizedBox(width: 42.h),
              Row(
                children: [
                  ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                      margin: const EdgeInsets.only(right: 8),
                      height: 8.h,
                      width: 8.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: currentPage == index
                            ? kBlueColor
                            : kGreyColor.withValues(alpha: .5),
                      ),
                      duration: const Duration(milliseconds: 300),
                    ),
                  ),
                ],
              ),
              const NextBtn(),
            ],
          ),
        );
      },
    );
  }
}
