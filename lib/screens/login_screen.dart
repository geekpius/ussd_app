import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ussd_app/routes.dart';
import 'package:ussd_app/utils/app_theme.dart';
import 'package:ussd_app/widgets/common/vertical_space.dart';
import 'package:ussd_app/widgets/forms/app_primary_button.dart';
import 'package:ussd_app/widgets/forms/u_form_label.dart';
import 'package:ussd_app/widgets/forms/u_input_field.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final phoneFocusNode = FocusNode();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppTheme.width(32.0),
            vertical: AppTheme.height(48.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const UFormLabel(text: 'Phone Number'),
              const VerticalSpace(height: 10.0),
              UInputField(
                hintText: 'Enter phone number',
                keyboardType: TextInputType.phone,
                maxLength: 10,
                controller: phoneController,
                focusNode: phoneFocusNode,
                validator: (String? value){
                  if(value!.isEmpty){
                    return 'Phone number field is required';
                  }
                  return null;
                },
                onTapOutside: (event){
                  phoneFocusNode.unfocus();
                },
              ),

              AppPrimaryButton(
                onPressed: (){
                  AppRoute.pushNamed(context, AppRoute.homePage);
                },
                text: 'Confirm',
              )
            ],
          ),
        ),
      ),
    );
  }
}
