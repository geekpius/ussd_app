import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ussd_app/utils/app_theme.dart';
import 'package:ussd_app/utils/constants.dart';
import 'package:ussd_app/widgets/cards/app_card.dart';
import 'package:ussd_app/widgets/common/app_image_icon.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kPrimaryWhite,
        body: SafeArea(
          child: Column(
            children: [
              AppCard(
                height: AppTheme.height(60),
                padding: EdgeInsets.symmetric(
                  horizontal: AppTheme.width(24.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi, 0542398441',
                      style: kMediumFontStyle.copyWith(
                        fontSize: AppTheme.fontSize(16.0),
                        color: AppTheme.getThemeColor(kSecondaryColor)
                      ),
                    ),
                    AppImageIcon(
                      'mtn.png',
                      size: AppTheme.radius(32.0),
                      shape: BoxShape.circle,
                    ),
                  ],
                ),
              ),
              TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: kMediumFontStyle.copyWith(
                fontSize: AppTheme.fontSize(14.0),
                color: AppTheme.getThemeColor(kSecondaryColor)
              ),
              unselectedLabelStyle: kMediumFontStyle.copyWith(
                fontSize: AppTheme.fontSize(14.0),
                color: AppTheme.getThemeColor(kPrimaryColor)
              ),
              labelColor: AppTheme.getThemeColor(kSecondaryColor),
              unselectedLabelColor: AppTheme.getThemeColor(kPrimaryColor),
              indicatorColor: AppTheme.getThemeColor(kSecondaryColor),
              tabs: const [
                Tab(
                  text: 'USSD',
                ),
                Tab(
                  text: 'Activities',
                ),
              ],
            ),

              const Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                  ],
                ),
              ),
              // Expanded(
              //   child: SingleChildScrollView(
              //     child: Padding(
              //       padding: EdgeInsets.symmetric(
              //         horizontal: AppTheme.width(24.0),
              //         vertical: AppTheme.height(48.0),
              //       ),
              //       child: const Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
