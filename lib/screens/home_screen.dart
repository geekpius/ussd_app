import 'package:flutter/material.dart';
import 'package:ussd_app/utils/my_theme.dart';
import 'package:ussd_app/widgets/forms/u_form_label.dart';
import 'package:ussd_app/widgets/forms/u_input_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MyTheme.width(32.0),
            vertical: MyTheme.height(48.0),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UFormLabel(text: 'Phone Number'),
              UInputField(
                hintText: 'Enter phone number',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
