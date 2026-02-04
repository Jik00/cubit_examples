import 'package:cubit_examples/books_app/features/home/representation/views/widgets/book_list_tile.dart';
import 'package:cubit_examples/books_app/features/home/representation/views/widgets/horizontal_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HorizontalList(),
          const SizedBox(
            height: 42,
          ),
          Text('Best Sellers',
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const BookListTile(),
            ),
          ),
        ],
      ),
    );
  }
}
