import '../../modules/welcome/screens/welcome_screen.dart';
import '../../modules/protocol_error/screen/route_not_found_screen.dart';
import '../../modules/dashboard/screens/list_tools.dart';
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
      ),
    );
  static final dashboard = AppRoute(
    '/dashboard',
    Handler(
      handlerFunc: (context, parameters) => ListTools(),
    ),
  );

  static final List<AppRoute> routes = [
    rootRoute,
    dashboard
  ];
}
