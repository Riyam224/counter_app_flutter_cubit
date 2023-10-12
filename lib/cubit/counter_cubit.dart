import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAPoints = 0;
  int teamBPoints = 0;

  // void teamAIncrement(int btnNumber) {
  //   teamAPoints += btnNumber;
  //   emit(CounterAIncrement());
  // }
  void teamIncrement({required String team, required int btnNumber}) {
    if (team == 'A') {
      teamAPoints += btnNumber;
      emit(CounterAIncrement());
    } else {
      teamBPoints += btnNumber;
      emit(CounterBIncrement());
    }
  }
}
