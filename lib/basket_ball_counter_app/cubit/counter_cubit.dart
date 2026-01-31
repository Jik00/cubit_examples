import 'package:cubit_examples/basket_ball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(teamAScore: 0, teamBScore: 0));

  void incrementTeamA(int points) {
    emit(
      state.copyWith(teamAScore: state.teamAScore + points),
    );
  }

  void incrementTeamB(int points) {
    emit(
      state.copyWith(teamBScore: state.teamBScore + points),
    );
  }

  void resetScores() {
    emit(const CounterState(teamAScore: 0, teamBScore: 0));
  }
}
