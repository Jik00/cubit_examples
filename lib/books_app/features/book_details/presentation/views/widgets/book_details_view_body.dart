import 'package:cubit_examples/books_app/core/utils/app_images.dart';
import 'package:cubit_examples/books_app/core/widgets/rating_row.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: 170,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Image.asset(Assets.assetsImagesPreview, fit: BoxFit.fill),
        ),
        const SizedBox(
          height: 24,
        ),
        const Text(
          'Book Title',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Author Name',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const RatingRow(),
      ],
    );
  }
}
