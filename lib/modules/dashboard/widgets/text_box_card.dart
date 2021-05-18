import 'package:flutter/material.dart';
import '../../../constants/colors_defaults.dart';

Widget textBoxCard() {
  return Container(
    decoration: BoxDecoration(
      color: DefaultColors.primaryVioletColor,
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            'Example',
            style: TextStyle(
                color: DefaultColors.whiteColor, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'ldkfjsldkfjsldkfj sdfl ksdjflsdj flksdjflksdj flsdj f',
            style: TextStyle(
              color: DefaultColors.whiteColor,
            ),
          ),
        ],
      ),
    ),
  );
}
