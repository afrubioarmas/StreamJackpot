import 'package:flutter/material.dart';

const horizontalMargin = 25.0;

class AppTheme {
  static get theme => _theme;

  static Color primaryColor = Color.fromRGBO(51, 204, 51, 1);

  static ThemeData _theme = ThemeData(
    primaryColor: Color.fromRGBO(51, 204, 51, 1),
    buttonColor: Color.fromRGBO(51, 204, 51, 1),
    canvasColor: Colors.white,
    backgroundColor: Color.fromRGBO(240, 244, 248, 1),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Color.fromRGBO(153, 174, 193, 1),
      ),
    ),
    iconTheme: IconThemeData(
      color: Color.fromRGBO(153, 174, 193, 1),
    ),
    textTheme: TextTheme(
        button: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        bodyText1: TextStyle(
            color: Color.fromRGBO(153, 174, 193, 1),
            fontSize: 22,
            fontWeight: FontWeight.bold),
        bodyText2: TextStyle(
          color: Color.fromRGBO(153, 174, 193, 1),
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          color: Color.fromRGBO(78, 93, 106, 1),
          fontSize: 17,
        ),
        headline3: TextStyle(
          color: Color.fromRGBO(153, 174, 193, 1),
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          color: Color.fromRGBO(78, 93, 106, 1),
          fontSize: 22,
        ),
        headline5: TextStyle(
          color: Color.fromRGBO(78, 93, 106, 1),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        headline1: TextStyle(
          color: Color.fromRGBO(78, 93, 106, 1),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        subtitle1: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
        headline6: TextStyle(
          color: primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        )),
    colorScheme: ColorScheme(
      primary: primaryColor,
      secondary: Colors.greenAccent,
      onSurface: Color.fromRGBO(240, 244, 248, 1),
      onPrimary: Colors.yellowAccent.withOpacity(0.8),
      brightness: Brightness.light,
      onBackground: Colors.yellowAccent.withOpacity(0.8),
      background: Colors.white,
      primaryVariant: Colors.yellowAccent.withOpacity(0.8),
      onError: Colors.yellowAccent.withOpacity(0.8),
      surface: Colors.yellowAccent.withOpacity(0.8),
      onSecondary: Colors.yellowAccent.withOpacity(0.8),
      error: Colors.yellowAccent.withOpacity(0.8),
      secondaryVariant: Colors.yellowAccent.withOpacity(0.8),
    ),
  );
}
