import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  //to be more easily when use this cubit in many places
  static CounterCubit get(BuildContext context) => BlocProvider.of(context);

  int counter = 0;

  void plus() {
    counter++;
    emit(CounterPlusState());
  }

  void minus() {
    counter--;
    emit(CounterMinusState());
  }

  void reset() {
    counter = 0;
    emit(CounterResetState());
  }
}
