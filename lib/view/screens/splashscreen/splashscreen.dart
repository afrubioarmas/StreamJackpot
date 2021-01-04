import 'package:StreamJackpot/misc/service_locator.dart';
import 'package:StreamJackpot/navigators/app_navigator/app_navigator.dart';
import 'package:StreamJackpot/view/components/loaders/app_progress_indicator.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    loadAppData();
  }

  loadAppData() async {
    locator<AppNavigator>().toMainScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.height * 0.2,
          height: MediaQuery.of(context).size.height * 0.2,
          child: AppProgressIndicator(),
        ),
      ),
    );
  }
}
