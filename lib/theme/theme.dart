import 'package:coffee_app/theme/colors.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  ThemeData getAppTheme() {
    return ThemeData(
      scaffoldBackgroundColor: mainColor,
      shadowColor: shadowColor,
      hintColor: fontColor2,
      cardTheme: CardTheme(
        shadowColor: shadowColor,
        color: mainColor,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: hintColor),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: hintColor),
        ),
      ),
    );
  }
}
