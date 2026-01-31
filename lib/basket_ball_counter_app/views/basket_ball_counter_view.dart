import 'package:cubit_examples/basket_ball_counter_app/cubit/counter_cubit.dart';
import 'package:cubit_examples/basket_ball_counter_app/cubit/counter_state.dart';
import 'package:cubit_examples/basket_ball_counter_app/views/widgets/basketball_counter_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketBallCounterView extends StatelessWidget {
  const BasketBallCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('Basket Ball Counter'),
      ),
      body: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          debugPrint(
              'Team A Score: ${state.teamAScore}, Team B Score: ${state.teamBScore}');
        },
        builder: (context, state) {
          return const BasketBallCounterViewBody();
        },
      ),
    );
  }
}

