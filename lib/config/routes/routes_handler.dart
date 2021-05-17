import 'package:mytools/modules/welcome/screens/welcome_screen.dart';
import 'package:mytools/modules/protocol_error/screen/route_not_found_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';

class AppRoutes {
  static final routeNotFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    debugPrint("Route not Found.");
    return RouteNotFoundScreen();
  });
  static final rootRoute = AppRoute(
      '/',
      Handler(
        handlerFunc: (context, parameters) => WelcomeScreen(),
      ));

  static final List<AppRoute> routes = [rootRoute];
}
