import 'package:flutter/material.dart';
import 'package:ussd_app/utils/app_theme.dart';
import 'package:ussd_app/utils/constants.dart';

class UFormLabel extends StatelessWidget {
  const UFormLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kRegularFontStyle.copyWith(
        fontSize: AppTheme.fontSize(14),
        color: AppTheme.getThemeColor(kBlackColor),
      ),
    );
  }
}
