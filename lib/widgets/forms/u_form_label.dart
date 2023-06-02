import 'package:flutter/material.dart';
import 'package:ussd_app/utils/app_theme.dart';

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
      style: TextStyle(
        fontSize: AppTheme.fontSize(14),
      ),
    );
  }
}
