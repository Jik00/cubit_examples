import 'package:cubit_examples/books_app/features/home/representation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'widgets/build_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomeViewBody(),
    );
  }
}
