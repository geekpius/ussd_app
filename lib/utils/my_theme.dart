import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTheme {

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
