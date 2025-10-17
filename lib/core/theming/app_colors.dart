import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFFFFFFFF);
  static const Color primaryColor = Color(0xFF1F3431);
  static const Color darkBlue = Color(0xFF0062E2);
  static const Color moreBlack = Color(0xFF090F1F);
  static const Color  lightGrey = Color(0xFFB9BCC7);
  static const Color  orange = Color(0xFFF95B1C);
  static const Color  lightOrange = Color(0xFFF6DAD1);
  static const Color  green = Color(0xFF3A813F);
  static const Color  lightBlue = Color(0xFFAACCF9);
  static const Color  moreWhite = Color(0xFFF7F7F7);
  static const Color  blue = Color(0xFF3B4CF2);


   static const Color red = Color(0xFFFF4C5E);


  static const Color transparent = Colors.transparent;

  // Optional: Add a method to create a MaterialColor from a single Color
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }
}
