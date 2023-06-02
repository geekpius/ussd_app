import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ussd_app/utils/app_theme.dart';
import 'package:ussd_app/utils/constants.dart';

class UInputField extends StatelessWidget {
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final String? hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextAlign textAlign;
  final int? maxLength;
  final TextEditingController? controller;
  final bool readOnly;
  final bool filled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onTap;
  final TextCapitalization textCapitalization;
  final String helperText;
  final bool hasHeight;
  final bool successBorderColor;
  final Color? helperStyleColor;
  final void Function(PointerDownEvent)? onTapOutside;
  final TextInputAction textInputAction;
  final double? helperHeight;
  final String? counterText;

  const UInputField({
    Key? key,
    this.onChanged,
    this.validator,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.left,
    this.maxLength,
    this.controller,
    this.readOnly = false,
    this.filled = false,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.inputFormatters,
    this.onTap,
    this.textCapitalization = TextCapitalization.none,
    this.helperText = ' ',
    this.hasHeight = true,
    this.successBorderColor = false,
    this.helperStyleColor,
    this.onTapOutside,
    this.textInputAction = TextInputAction.done,
    this.helperHeight,
    this.counterText = '',
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: onTapOutside,
      onTap: onTap,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textAlign: textAlign,
      style: kMediumFontStyle.copyWith(
        fontSize: AppTheme.fontSize(14.0),
        color: AppTheme.getThemeColor(kBlackColor, kPrimaryWhite),
      ),
      onChanged: onChanged,
      validator: validator,
      maxLength: maxLength,
      readOnly: readOnly,
      controller: controller,
      textCapitalization: textCapitalization,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      cursorColor: AppTheme.getThemeColor(const Color.fromRGBO(0, 0, 0, 0.8)),
      decoration: InputDecoration(
        // fillColor: MyTheme.getThemeColor(kZuberiBlackColor10),
        filled: filled,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        counterText: counterText,
        helperText: helperText,
        isDense: true,
        hintStyle: kRegularFontStyle.copyWith(
          fontSize: AppTheme.fontSize(14.0),
          color: AppTheme.getThemeColor(kAikiSubtitleBlack1),
        ),
        helperStyle: kRegularFontStyle.copyWith(
          fontSize: AppTheme.fontSize(14.0),
          color: helperStyleColor?? AppTheme.getThemeColor(kBlackColor, kPrimaryWhite),
          height: helperHeight,
        ),
        counterStyle: kMediumFontStyle.copyWith(
          fontSize: AppTheme.fontSize(10),
          color: AppTheme.getThemeColor(kBlackColor),
        ),
        errorStyle: kRegularFontStyle.copyWith(
          fontSize: AppTheme.fontSize(12.0),
          color: AppTheme.getThemeColor(kErrorColor),
        ),
        contentPadding: EdgeInsets.all(
          AppTheme.radius(12.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppTheme.radius(8.0))),
          borderSide: BorderSide(color: AppTheme.getThemeColor(kErrorColor), width: 1.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: successBorderColor ? kSuccessColor :  AppTheme.getThemeColor(kGrey5), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(AppTheme.radius(8.0))),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: successBorderColor ? kSuccessColor :  AppTheme.getThemeColor(kGrey5), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(AppTheme.radius(8.0))),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: successBorderColor ? kSuccessColor :  AppTheme.getThemeColor(kGrey5), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(AppTheme.radius(8.0))),
        ),
      ),
    );
  }
}
