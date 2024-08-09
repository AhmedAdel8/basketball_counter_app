import 'package:flutter_application_7/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamA = 0;

  int teamB = 0;

  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamA += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamB += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
