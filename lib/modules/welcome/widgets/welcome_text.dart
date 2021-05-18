import 'package:flutter/material.dart';

Text welcomeText(String msgText) {
  return Text(
    msgText,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 60, fontFamily: 'RobotoMono'),
  );
}
