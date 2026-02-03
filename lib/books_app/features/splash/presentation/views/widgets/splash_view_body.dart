import 'package:cubit_examples/books_app/features/home/representation/views/home_view.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    splashNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.book,
        color: Colors.white,
        size: 100,
      ),
    );
  }

  Future<Null> splashNavigation() {
    return Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    });
  }
}
