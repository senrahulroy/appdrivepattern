import 'package:appdrivepattern/common/widget/button/common_primary.dart';
import 'package:appdrivepattern/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/login_singup/form_text_field_with_label.dart';
import '../../../../../common/widget/text_form_field/common_text_form_field.dart';
import 'forgot_password.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// username
          FormTextFieldWithLabel(
            labelIcon: Icon(Iconsax.user),
            label: 'Username',
            textField: CommonTextField(
              hintText: 'Username',
            ),
          ),

          SizedBox(
            height: RSizes.spaceBtwItems,
          ),

          /// password
          FormTextFieldWithLabel(
            labelIcon: Icon(Iconsax.lock),
            label: 'Password',
            textField: CommonTextField(
              hintText: 'Password',
            ),
          ),

          /// forgot password
          ForgotPassword(title: 'Passwort vergessen'),
          
          
          /// login btn
          CommonPrimaryButton(btnTitle: 'Login',onPressed: () {},)
        ],
      ),
    );
  }
}
