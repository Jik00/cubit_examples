import 'package:cubit_examples/books_app/features/home/data/models/book_model/book_model.dart';
import 'package:cubit_examples/books_app/features/home/representation/views/widgets/book_cover.dart';
import 'package:flutter/widgets.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({
    super.key, required this.books,
  });

  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        itemCount: books.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.only(
              right: 16,
              top: 8,
            ),
            child: BookCover( book: books[index] ,),
          );
        },
      ),
    );
  }
}
