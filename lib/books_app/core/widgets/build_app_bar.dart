  import 'package:flutter/material.dart';

import '../../../constants.dart';

AppBar buildAppBar( { VoidCallback? onPressed, required IconData leading, required IconData trailing} ) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leadingWidth: 74,
      leading:
          IconButton(
            onPressed: onPressed, icon: Icon(leading , color: Colors.white, size: 30),),
      actions: [
        IconButton(
          onPressed: (){},
          icon:  Padding(
            padding:  const EdgeInsets.only(right: 12),
            child: Icon(trailing,
                color: Colors.white, size: 30),
          ),
        ),
      ],
    );
  }