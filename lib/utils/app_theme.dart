import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants.dart';

class AppTheme {

  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: kPrimaryWhite,
    scaffoldBackgroundColor: kPrimaryWhite,
    colorScheme: const ColorScheme.light(),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(const Color(0xFFFAF9F9)),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: kPrimaryWhite,
      elevation: 0,
    ),
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: FadeThroughPageTransitionsBuilder(fillColor: Colors.transparent),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
      },
    ),
  );


  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: kPrimaryBlack,
    scaffoldBackgroundColor: kPrimaryBlack,
    colorScheme: const ColorScheme.dark(),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(const Color(0xFFFAF9F9)),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: kPrimaryBlack,
      elevation: 0,
    ),
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: FadeThroughPageTransitionsBuilder(fillColor: Colors.transparent),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
      },
    ),
  );

  static Color getThemeColor(Color lightColor, [Color? darkColor]){
    return lightColor;
  }

  static double fontSize(double fontSize) => fontSize.sp;

  static double width(double width) => width.w;

  static double height(double height) => height.h;

  static double radius(double radius) => radius.r;

  static double getLineHeight(double figmaSize, double fontSize) => figmaSize/fontSize;

  static double getLetterSpacing(double figmaSize) => figmaSize/100;



}
