import 'package:cubit_examples/books_app/core/service/get_it_service.dart';
import 'package:cubit_examples/books_app/features/home/data/repos/home_repo.dart';
import 'package:cubit_examples/books_app/features/home/representation/manager/home_data_cubit/home_data_cubit.dart';
import 'package:cubit_examples/books_app/features/home/representation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/build_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: buildAppBar(
          leading: Icons.book_rounded, trailing: Icons.search_rounded),

      body: BlocProvider(
        create: (context) => HomeDataCubit(
          homeRepo: getIt<HomeRepo>(),
        )..fetchHomeData(),   // trigger the method


        child: const HomeViewBody(),
      ),
    );
  }
}