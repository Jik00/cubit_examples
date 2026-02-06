import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cubit_examples/books_app/features/book_details/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';

class BookCover extends StatelessWidget {
  const BookCover({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsView(book: book),
                ),
              );
            },
            child: CachedNetworkImage(
              imageUrl: book.image,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) =>
                  const Icon(Icons.broken_image),
            ),
          ),
          Positioned(
            bottom: 12,
            right: 12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow_rounded,
                      color: Colors.white, size: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
