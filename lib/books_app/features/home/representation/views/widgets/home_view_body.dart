import 'package:cubit_examples/books_app/features/home/representation/views/widgets/book_list_tile.dart';
import 'package:cubit_examples/books_app/features/home/representation/views/widgets/horizontal_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorizontalList(),
                  SizedBox(
                    height: 42,
                  ),
                  Text(
                    'Best Sellers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
            SliverList.builder(
              itemBuilder: (context, index) => const BookListTile(),
              itemCount: 5,
            ),
          ],
        ),
      ),
    );
  }
}
