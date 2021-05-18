import 'package:flutter/material.dart';
import '../../../constants/colors_defaults.dart';

Widget iconTools(double sizeIcon) {
  return Container(
    child: Center(
      child: Icon(
        Icons.favorite,
        size: 140 * sizeIcon,
        color: DefaultColors.primaryYellowColor,
      ),
    ),
  );
}
