import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ussd_app/extensions/string_extension.dart';
import 'package:ussd_app/services/service_locator.dart';
import 'package:ussd_app/utils/app_theme.dart';
import 'package:ussd_app/utils/constants.dart';
import 'package:ussd_app/view_models/user_view_model.dart';
import 'package:ussd_app/widgets/cards/app_card.dart';
import 'package:ussd_app/widgets/common/app_image_icon.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final user = sl.get<UserViewModel>().getUser;

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
                      'Hi, ${user.phoneNumber}',
                      style: kMediumFontStyle.copyWith(
                        fontSize: AppTheme.fontSize(16.0),
                        color: AppTheme.getThemeColor(kSecondaryColor)
                      ),
                    ),
                    AppImageIcon(
                      '${(user.phoneNumber??'').getNetworkName()}.${(user.phoneNumber??'').getNetworkName()=='airteltigo'? 'jpg':'png'}',
                      size: AppTheme.radius(24.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
