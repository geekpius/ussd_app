import 'package:flutter/material.dart';
import '../../utils/app_theme.dart';
import '../../utils/constants.dart';

class AppCard extends StatelessWidget {
  const AppCard({
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
    this.border,
    this.alignment,
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
  final BoxBorder? border;
  final AlignmentGeometry? alignment;


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      margin: margin,
      padding: padding,
      width: width?? double.infinity,
      height: height,
      decoration: decoration?? BoxDecoration(
        color: backgroundColor?? AppTheme.getThemeColor(kPrimaryWhite, kPrimaryBlack),
        borderRadius: BorderRadius.circular(borderRadius?? AppTheme.radius(16.0)),
        border: border,
        gradient: gradient,
      ),
      child: child,
    );
  }
}
