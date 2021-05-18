import 'package:flutter/material.dart';
import 'package:mytools/constants/colors_defaults.dart';
import 'package:mytools/widgets/backgound_screen.dart';
import 'package:mytools/modules/welcome/widgets/welcome_text.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundScreen(
            DefaultColors.whiteColor, DefaultColors.secondaryVioletColor),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              welcomeText('Welcome'),
              welcomeText('To'),
              welcomeText('MyTools'),
            ],
          ),
        ),
      ),
    );
  }
}
