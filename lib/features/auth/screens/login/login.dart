import 'package:appdrivepattern/common/login_singup/auth_divider.dart';
import 'package:appdrivepattern/common/login_singup/auth_footer_social_buttons.dart';
import 'package:appdrivepattern/features/auth/screens/login/widget/login_form.dart';
import 'package:appdrivepattern/features/auth/screens/signup/signup.dart';
import 'package:appdrivepattern/utils/constants/colors.dart';
import 'package:appdrivepattern/utils/constants/image_strings.dart';
import 'package:appdrivepattern/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/login_singup/bottom_acc_text_with_btn.dart';
import '../../../../common/login_singup/head_image_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// title head
            HeadSectionWithImage(
                isBackBtnVisible: true,
                image: RImages.logo,
                bottomTitle: 'Login bei ADHDrive'),

            /// login form field
            const LoginForm(),

            ///
            const AuthDivider(
              dividerText: 'Or',
            ),

            /// other login
            const SizedBox(height: RSizes.spaceBtwSections/2),

            ///
            const FooterSocialButtons(),

            /// don't have a account
            BottomAccountTextWithButton(
              title: 'Don’t have an account yet?',
              subTitleBtn: 'Create an account',
              onPressed: () {
                Get.off(()=> const SignupScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
