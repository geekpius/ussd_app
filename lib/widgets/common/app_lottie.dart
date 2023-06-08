import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/constants.dart';

class AppLottie extends StatelessWidget {
  const AppLottie({
    Key? key,
    required this.filePath,
    this.assetFile = false,
    this.repeat,
    this.height,
    this.width,
    this.fit,
    this.controller,
    this.onLoaded,
  }) : super(key: key);

  final String filePath;
  final bool assetFile;
  final bool? repeat;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Animation<double>? controller;
  final void Function(LottieComposition)? onLoaded;

  @override
  Widget build(BuildContext context) {
    if(assetFile) {
      return Lottie.asset(
        '$kAnimationPath/$filePath',
        controller: controller,
        fit: fit?? BoxFit.cover,
        repeat: repeat,
        width: width,
        height: height,
        onLoaded: onLoaded,
      );
    }

    return Lottie.network(
      filePath,
      controller: controller,
      fit: fit?? BoxFit.cover,
      repeat: repeat,
      width: width,
      height: height,
      onLoaded: onLoaded,
    );
  }
}
