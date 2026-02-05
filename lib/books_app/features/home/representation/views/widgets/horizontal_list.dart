import 'package:cubit_examples/books_app/features/home/representation/views/widgets/book_cover.dart';
import 'package:flutter/widgets.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.only(
              right: 16,
              top: 8,
            ),
            child: BookCover(),
          );
        },
      ),
    );
  }
}
