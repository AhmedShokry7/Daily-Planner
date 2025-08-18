import 'package:bloc/bloc.dart';
import 'package:daily_planner/core/data/on_boarding_list.dart';
import 'package:daily_planner/core/strings.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  int currentPage = 0;
  late PageController pageController;

  OnBoardingCubit() : super(OnBoardingInitial());

  void changePage(int page) {
    currentPage = page;
    emit(OnBoardingPageChanged(currentPage: page));
  }

  void nextBtn(BuildContext context) {
    if (currentPage < onBoardingList.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      currentPage++;
      emit(OnBoardingPageChanged(currentPage: currentPage));
    } else {
      Navigator.pushNamedAndRemoveUntil(
        context,
        bottomNavigationBarView,
        (route) => false,
      );
    }
  }

  void backBtn() {
    if (currentPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      currentPage--;
      emit(OnBoardingPageChanged(currentPage: currentPage));
    }
  }
}
