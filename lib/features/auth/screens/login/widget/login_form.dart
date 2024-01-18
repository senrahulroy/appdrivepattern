import 'package:appdrivepattern/common/widget/button/common_primary.dart';
import 'package:appdrivepattern/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/login_singup/form_text_field_with_label.dart';
import '../../../../../common/widget/text_form_field/common_text_form_field.dart';
import '../../../../../navigation_menu.dart';
import 'forgot_password.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isPassVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// username
          const FormTextFieldWithLabel(
            labelIcon: Icon(Iconsax.user),
            label: 'Username',
            textField: CommonTextField(
              hintText: 'Username',
            ),
          ),

          const SizedBox(
            height: RSizes.spaceBtwItems,
          ),

          /// password
          FormTextFieldWithLabel(
            labelIcon: const Icon(Iconsax.lock),
            label: 'Password',
            textField: CommonTextField(
              isObscureText: isPassVisible,
              hintText: 'Password',
              suffix: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPassVisible =! isPassVisible;
                    });

                  },
                  child: Icon(isPassVisible
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined)),
            ),
          ),

          /// forgot password
          ForgotPassword(title: 'Forgot Password?', onPressed: () {}),

          /// login btn
          CommonPrimaryButton(
            btnTitle: 'Login',
            onPressed: () {
              Get.to(()=>const NavigationMenu());
            },
          )
        ],
      ),
    );
  }
}
