import 'package:daily_planner/core/cubits/cubit/on_boarding_cubit.dart';
import 'package:daily_planner/core/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NextBtn extends StatelessWidget {
  const NextBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final myHight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        BlocProvider.of<OnBoardingCubit>(context).nextBtn(context);
      },
      child: Container(
        height: myHight * .07,
        width: myHight * .07,
        decoration: const BoxDecoration(
          color: kBlueColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.arrow_forward_rounded,
          size: myHight * .03,
          color: kWhiteColor,
        ),
      ),
    );
  }
}

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final myHight = MediaQuery.of(context).size.height;
    return Container(
      height: myHight * .07,
      width: myHight * .07,
      decoration: BoxDecoration(
        border: Border.all(color: kBlueColor, width: 2),
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.arrow_back_rounded,
        size: myHight * .03,
        color: kBlueColor,
      ),
    );
  }
}
