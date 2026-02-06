import 'package:cubit_examples/books_app/core/helper_functions/get_dummy_book.dart';
import 'package:cubit_examples/books_app/features/home/representation/views/widgets/vertical_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../manager/home_data_cubit/home_data_cubit.dart';

class BookListBlocBuilderV extends StatelessWidget {
  const BookListBlocBuilderV({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDataCubit, HomeDataState>(
      builder: (BuildContext context, state) {
        if (state is HomeDataSuccess) {
          return VerticalList(books: state.books);
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: VerticalList(books: getDummyEras()),
          );
        }
      },
    );
  }
}