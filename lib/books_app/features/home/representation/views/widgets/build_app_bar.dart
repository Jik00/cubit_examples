  import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leadingWidth: 74,
      leading:
          const Icon(Icons.menu_book_rounded, color: Colors.white, size: 30),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Padding(
            padding:  EdgeInsets.only(right: 12),
            child: Icon(Icons.search_rounded,
                color: Colors.white, size: 30),
          ),
        ),
      ],
    );
  }