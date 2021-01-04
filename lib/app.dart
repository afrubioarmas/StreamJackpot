import 'package:StreamJackpot/misc/service_locator.dart';
import 'package:StreamJackpot/misc/theme.dart';
import 'package:StreamJackpot/navigators/app_navigator/app_navigator.dart';
import 'package:StreamJackpot/view/screens/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

final GlobalKey<NavigatorState> keyGlobal = GlobalKey();

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: AppTheme.theme,
      navigatorKey: locator<AppNavigator>().navigatorKey,
      onGenerateRoute: locator<AppNavigator>().onGenerateRoute,
      home: SplashScreen(),
    );
  }
}
