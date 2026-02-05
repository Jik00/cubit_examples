import 'package:cubit_examples/basket_ball_counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsColum extends StatelessWidget {
  const DetailsColum({super.key, required this.teamName});

  final String teamName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teamName,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Text(
            (teamName == 'Team A'
                ? context.watch<CounterCubit>().state.teamAScore.toString()
                : context.watch<CounterCubit>().state.teamBScore.toString()),
            style: const TextStyle(fontSize: 200)),
        ElevatedButton(
          onPressed: () {
            if (teamName == 'Team A') {
              context.read<CounterCubit>().incrementTeamA(1);
            } else {
              context.read<CounterCubit>().incrementTeamB(1);
            }
          },
          child: const Text(
            '1 Point',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            if (teamName == 'Team A') {
              context.read<CounterCubit>().incrementTeamA(3);
            } else {
              context.read<CounterCubit>().incrementTeamB(3);
            }
          },
          child: const Text(
            '3 Points',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            if (teamName == 'Team A') {
              context.read<CounterCubit>().incrementTeamA(6);
            } else {
              context.read<CounterCubit>().incrementTeamB(6);
            }
          },
          child: const Text(
            '6 Points',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
