import 'dart:ui';
// import 'package:cubit_examples/books_app/core/utils/app_images.dart';
import 'package:cubit_examples/books_app/core/utils/app_images.dart';
import 'package:cubit_examples/books_app/features/book_details/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookDetailsView(),
                ),
              );
            },
            child: Image.asset(Assets.assetsImagesPreview, fit: BoxFit.fill),
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
