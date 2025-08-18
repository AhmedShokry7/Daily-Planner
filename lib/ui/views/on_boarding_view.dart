import 'package:daily_planner/core/cubits/cubit/on_boarding_cubit.dart';
import 'package:daily_planner/ui/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnBoardingCubit(),
        child: const OnBoardingViewBody(),
      ),
    );
  }
}
