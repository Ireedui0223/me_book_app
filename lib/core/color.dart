import "package:flutter/material.dart";
import "package:flutter/services.dart";

class AppColors {
  AppColors._();

  static const String fontInter = 'Inter';
  static const String fontCharter = 'Charter';

  static const Color primary = Color(0xFF236BD7);
  static const Color secondary = Color(0xFFDE7428);

  static ThemeData themeColor = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
        color: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: primary, size: 16)),
    fontFamily: fontInter,
  );
}
