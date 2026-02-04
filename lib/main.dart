import 'package:cubit_examples/basket_ball_counter_app/cubit/counter_cubit.dart';
import 'package:cubit_examples/books_app/features/splash/presentation/views/splash_view.dart';
import 'package:cubit_examples/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          textTheme: const TextTheme(
            headlineSmall: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
          scaffoldBackgroundColor: kPrimaryColor,
          useMaterial3: true,
        ),
        home: const SplashView(),
      ),
    );
  }
}
