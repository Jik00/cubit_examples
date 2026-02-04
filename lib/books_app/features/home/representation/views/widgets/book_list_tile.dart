import 'package:flutter/material.dart';

class BookListTile extends StatelessWidget {
  const BookListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Text(
                'Book Title',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                'Book Author',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              // rating
              Row(
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
                  Icon(
                    Icons.star_rounded,
                    color: Colors.amberAccent,
                    size: 18,
                  ),
                  Text(
                    ' 4.8',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' (2390)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
