import 'package:cubit_examples/books_app/core/widgets/build_app_bar.dart';
import 'package:cubit_examples/books_app/features/book_details/presentation/views/widgets/book_details_view_body.dart';
import 'package:cubit_examples/books_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        leading: Icons.close_rounded,
        trailing: Icons.shopping_cart_checkout_rounded,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: BookDetailsViewBody(book : book),
    );
  }
}
