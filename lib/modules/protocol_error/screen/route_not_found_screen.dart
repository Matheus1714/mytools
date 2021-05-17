import 'package:flutter/material.dart';

class RouteNotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Route not fonud'),
          ],
        ),
      ),
    );
  }
}
