import '../../utils/app_theme.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class AppPrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? color;
  final TextStyle? textStyle;
  final double? minWidth;
  final double height;
  final bool scaledText;
  final Color? borderColor;
  final bool enabled;
  final double? fontSize;
  final Color? textColor;
  final BorderRadiusGeometry? borderRadius;

  const AppPrimaryButton({
    Key? key,
    required this.onPressed,
    this.text = '',
    this.color,
    this.textStyle,
    this.minWidth,
    this.height = 50.0,
    this.scaledText = true,
    this.borderColor,
    this.enabled = true,
    this.fontSize,
    this.textColor,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppTheme.height(height),
      decoration: BoxDecoration(
          color: enabled ? (color?? AppTheme.getThemeColor(kAikiSecondary)) : Colors.transparent,
          borderRadius: borderRadius?? BorderRadius.circular(AppTheme.radius(10.0)),
          border: Border.all(color: enabled ? (borderColor?? AppTheme.getThemeColor(kAikiSecondary)) : Colors.transparent)
      ),
      child: MaterialButton(
        elevation: 0,
        color: color?? AppTheme.getThemeColor(kAikiSecondary),
        // disabledColor: AppTheme.getThemeColor(kZuberiBlackColor10, kDarkModeBorderColor),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius?? BorderRadius.circular(AppTheme.radius(10.0)),
        ),
        onPressed: onPressed,
        minWidth: minWidth == null? double.infinity: AppTheme.width(minWidth!),
        height: AppTheme.height(height),
        child: scaledText ?
        Text(
          text,
          style: textStyle?? kRegularFontStyle.copyWith(
            fontSize: AppTheme.fontSize(fontSize?? 14.0),
            color: enabled ? AppTheme.getThemeColor(textColor?? kPrimaryWhite) : AppTheme.getThemeColor(textColor?? kPrimaryBlack),
          ),
        )
            :
        RichText(
          text: TextSpan(
            text: text,
            style: textStyle?? kRegularFontStyle.copyWith(
              fontSize: AppTheme.fontSize(fontSize?? 14.0),
              color: enabled ? AppTheme.getThemeColor(textColor?? kPrimaryWhite) : AppTheme.getThemeColor(textColor?? kPrimaryBlack),
            ),
          ),
        ),
      ),
    );
  }
}
