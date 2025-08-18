import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  int currentPage = 0;

  OnBoardingCubit() : super(OnBoardingInitial());

  void changePage(int page) {
    currentPage = page;
    emit(OnBoardingPageChanged(currentPage: page));
  }
}
