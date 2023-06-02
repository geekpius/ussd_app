import 'package:flutter/material.dart';

import '../../utils/app_theme.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: AppTheme.height(height));
  }
}
