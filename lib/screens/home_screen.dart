import 'package:flutter/material.dart';
import 'package:ussd_app/utils/app_theme.dart';
import 'package:ussd_app/widgets/common/vertical_space.dart';
import 'package:ussd_app/widgets/forms/u_form_label.dart';
import 'package:ussd_app/widgets/forms/u_input_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _phoneController = TextEditingController();
  final _phoneFocusNode = FocusNode();

  @override
  void dispose() {
    _phoneController.dispose();
    _phoneFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                controller: _phoneController,
                focusNode: _phoneFocusNode,
                validator: (String? value){
                  if(value!.isEmpty){
                    return 'Phone number field is required';
                  }
                  return null;
                },
                onTapOutside: (event){
                  _phoneFocusNode.unfocus();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
