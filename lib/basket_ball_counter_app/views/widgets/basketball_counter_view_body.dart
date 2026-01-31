import 'package:cubit_examples/basket_ball_counter_app/cubit/counter_cubit.dart';
import 'package:cubit_examples/basket_ball_counter_app/views/widgets/details_colum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketBallCounterViewBody extends StatelessWidget {
  const BasketBallCounterViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DetailsColum(teamName: 'Team A'),
              VerticalDivider(
                  width: 15,
                  thickness: 2,
                  indent: 50,
                  endIndent: 10,
                  color: Colors.grey),
              DetailsColum(teamName: 'Team B'),
            ],
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
           context.read<CounterCubit>().resetScores();
            //BlocProvider.of<CounterCubit>(context).resetScores();
          },
          child: const Text(
            'Reset',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
