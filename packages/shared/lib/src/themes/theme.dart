import 'package:flutter/material.dart';
import 'package:shared/src/constants/color.constant.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: APP_LIGHT_COLORS.PRIMARY_COLOR,
    appBarTheme:
        const AppBarTheme(backgroundColor: APP_LIGHT_COLORS.PRIMARY_COLOR),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: APP_DARK_COLORS.PRIMARY_COLOR,
    appBarTheme:
        const AppBarTheme(backgroundColor: APP_DARK_COLORS.PRIMARY_COLOR),
  );
}

ApplicationTheme _themeClass = ApplicationTheme();
