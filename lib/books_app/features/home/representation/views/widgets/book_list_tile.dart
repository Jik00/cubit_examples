import 'package:cached_network_image/cached_network_image.dart';
import 'package:cubit_examples/books_app/core/widgets/rating_row.dart';
import 'package:cubit_examples/books_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../book_details/presentation/views/book_details_view.dart';

class BookListTile extends StatelessWidget {
  const BookListTile({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookDetailsView(book: book),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 100,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: CachedNetworkImage(
                  imageUrl: book.image,
                  fit: BoxFit.fill,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.broken_image),
                )),
            const SizedBox(
              width: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  book.title.substring(0, 10),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  book.authors.substring(0, 8),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                // rating
                const Row(
                  children: [
                    Text(
                      '19.99 \$',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 72,
                    ),
                    RatingRow()
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
