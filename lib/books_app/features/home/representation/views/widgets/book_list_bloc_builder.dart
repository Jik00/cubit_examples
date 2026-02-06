import 'package:cubit_examples/books_app/core/helper_functions/get_dummy_book.dart';
import 'package:cubit_examples/books_app/features/home/representation/manager/home_data_cubit/home_data_cubit.dart';
import 'package:cubit_examples/books_app/features/home/representation/views/widgets/horizontal_list.dart';
import 'package:cubit_examples/books_app/features/home/representation/views/widgets/vertical_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookListBlocBuilder extends StatelessWidget {
  const BookListBlocBuilder({super.key, required this.vertical});

  final bool vertical;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDataCubit, HomeDataState>(
      builder: (BuildContext context, state) {
        if (state is HomeDataSuccess) {
          return (vertical
              ? VerticalList(books: state.books)
              : HorizontalList(books: state.books));
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: (vertical
                ? VerticalList(books: getDummyEras())
                : HorizontalList(books: getDummyEras())),
          );
        }
      },
    );
  }
}
