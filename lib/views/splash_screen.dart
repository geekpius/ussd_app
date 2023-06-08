import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ussd_app/utils/app_theme.dart';
import 'package:ussd_app/widgets/common/app_lottie.dart';
import '../utils/constants.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: kPrimaryWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppTheme.width(32.0),
            vertical: AppTheme.height(48.0),
          ),
          child: const Center(
            child: AppLottie(
              filePath: 'loader.json',
              assetFile: true,
              repeat: true,
            ),
          ),
        ),
      ),
    );
  }
}

