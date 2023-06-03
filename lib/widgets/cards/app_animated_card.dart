
import '../../utils/app_theme.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class AppAnimatedCard extends StatelessWidget {
  const AppAnimatedCard({
    Key? key,
    this.backgroundColor,
    required this.child,
    this.margin,
    this.padding,
    this.decoration,
    this.height,
    this.width,
    this.gradient,
    this.borderRadius,
    required this.duration,
  }) : super(key: key);


  final Color? backgroundColor;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final double? width;
  final double? height;
  final Gradient? gradient;
  final double? borderRadius;
  final Duration duration;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration,
      margin: margin,
      padding: padding,
      width: width?? double.infinity,
      height: height,
      decoration: decoration?? BoxDecoration(
          color: backgroundColor?? AppTheme.getThemeColor(kPrimaryWhite, kPrimaryBlack),
          borderRadius: BorderRadius.circular(borderRadius?? AppTheme.radius(16.0)),
        gradient: gradient,
      ),
      child: child,
    );
  }
}
