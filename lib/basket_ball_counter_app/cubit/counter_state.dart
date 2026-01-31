import 'package:equatable/equatable.dart';

class CounterState extends Equatable{

  final int teamAScore;
  final int teamBScore;

  const CounterState({ required this.teamAScore, required this.teamBScore});

  CounterState copyWith({ int? teamAScore, int? teamBScore}) {
    return CounterState(
      teamAScore: teamAScore ?? this.teamAScore,
      teamBScore: teamBScore ?? this.teamBScore,
    );
  }

  @override
  List<Object?> get props => [ teamAScore, teamBScore];

}