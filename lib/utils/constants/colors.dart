import 'package:flutter/material.dart';

class SColors{
  SColors._();

  //App Basic Colors
  static const Color primary = Color(0xFF3b757f);
  static const Color secondary = Color(0xFF5faab1);
  static const Color accent = Color(0xFFbfe0e2);

  //Gradient Colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
    Color(0xff356169),
    Color(0xff438e96),
    Color(0xff92cace),
  ]);

  //Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF325158);
  static const Color textWhite = Color(0xffffffff);

  //Background Colors
  static const Color light = Color(0xFFf2f9f9);
  static const Color dark = Color(0xFF1a2c32);
  static const Color primaryBackground = Color(0xffecf4f4);

  //Background Container Colors
  static const Color lightContainer = Color(0xFFf2f9f9);
  static Color darkContainer = SColors.white.withOpacity(0.1);

  //Button Colors
  static const Color buttonPrimary = Color(0xFF3b757f);
  static const Color buttonSecondary = Color(0xff73acb0);
  static const Color buttonDisabled = Color(0xff8ca5a7);

  //Border Colors
  static const Color bordarPrimary = Color(0xFFf2f9f9);
  static const Color borderSecondary = Color(0xFFddeff0);

  //Error and Validation Colors
  static const Color error = Color(0xffd41010);
  static const Color success = Colors.green;
  static const Color warning = Colors.orange;
  static const Color info = Color(0xFF3b757f);

  //Neutral Shades
  static const Color black = Color(0xff212325);
  static const Color darkerGrey = Color(0xff4e4e4e);
  static const Color darkGrey = Color(0xff909090);
  static const Color grey = Color(0xffd5d5d5);
  static const Color softGrey = Color(0xffe1e3e2);
  static const Color lightGrey =Color(0xffdcdfde);
  static const Color white =Color(0xffffffff);

}