import 'package:flutter/material.dart';

BoxDecoration backgroundScreen(Color firsrtColor, Color secondColor) {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        firsrtColor,
        secondColor,
      ],
    ),
  );
}
