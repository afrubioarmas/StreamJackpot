import 'package:StreamJackpot/navigators/app_navigator/app_routes.dart';
import 'package:StreamJackpot/view/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<void> toMainScreen() {
    return _pushRoute(AppRoutes.mainScreen, clearStack: true);
  }

  Future<void> toAuthentication({bool isSignIn}) {
    return _pushRoute(AppRoutes.authentication,
        clearStack: true, arguments: isSignIn);
  }

  popScreen() {
    navigatorKey.currentState.pop();
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.mainScreen:
        return MaterialPageRoute(builder: (context) => MainScreen());
      case AppRoutes.authentication:
        return MaterialPageRoute(
            builder: (context) => Text("AuthenticationScreen"));
      case AppRoutes.createUserForm:
        return MaterialPageRoute(
            builder: (context) => Text("create user "
                "screen"));
    }
    return null;
  }

  Future<T> _pushRoute<T>(String routeName,
      {Object arguments, bool clearStack = false}) {
    if (clearStack) {
      return navigatorKey.currentState.pushNamedAndRemoveUntil<T>(
          routeName, (route) => false,
          arguments: arguments);
    } else {
      return navigatorKey.currentState
          .pushNamed<T>(routeName, arguments: arguments);
    }
  }
}
