import 'package:cubit_examples/books_app/features/home/representation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/build_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          leading: Icons.book_rounded, trailing: Icons.search_rounded),
      body: const HomeViewBody(),
    );
  }
}
