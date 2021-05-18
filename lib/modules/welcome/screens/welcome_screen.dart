import 'package:flutter/material.dart';
import '../../../constants/colors_defaults.dart';
import '../widgets/welcome_text.dart';
import '../../../widgets/backgound_screen.dart';

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
