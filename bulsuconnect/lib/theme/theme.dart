import 'package:bulsuconnect/theme/color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    iconTheme: const IconThemeData(color: AppColor.iconColor, size: 26.0),
    fontFamily: 'Poppins',
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: AppColor.primary),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 32.0, color: AppColor.textColor),
      bodyMedium: TextStyle(fontSize: 14.0, color: AppColor.textColor),
      bodyLarge: TextStyle(fontSize: 24.0, color: AppColor.textColor),
      labelMedium: TextStyle(fontSize: 14.0, color: AppColor.textColor),
      labelSmall: TextStyle(fontSize: 12.0, color: AppColor.textColor),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(
            TextStyle(color: Colors.white, fontFamily: 'Poppins')),
        backgroundColor: MaterialStatePropertyAll(AppColor.primary),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
        overlayColor: MaterialStatePropertyAll(AppColor.focusedButton),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
        padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0)),
      ),
    ),
  );
}
