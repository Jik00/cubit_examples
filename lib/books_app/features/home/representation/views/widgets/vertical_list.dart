import 'package:cubit_examples/books_app/features/home/representation/views/widgets/book_list_tile.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({
    super.key, required this.books,
  });

  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => BookListTile(book: books[index] ,),
      itemCount: books.length,
    );
  }
}
