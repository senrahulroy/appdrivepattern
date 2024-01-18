import 'package:appdrivepattern/features/auth/screens/login/login.dart';
import 'package:appdrivepattern/features/auth/screens/signup/widget/singup_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/login_singup/auth_divider.dart';
import '../../../../common/login_singup/auth_footer_social_buttons.dart';
import '../../../../common/login_singup/bottom_acc_text_with_btn.dart';
import '../../../../common/login_singup/head_image_title.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                bottomTitle: 'Account erstellen'),

            /// login form field
            const SingUpForm(),

            ///
            const AuthDivider(
              dividerText: 'oder',
            ),

            /// other login
            const SizedBox(height: RSizes.spaceBtwSections/2),

            ///
            const FooterSocialButtons(),

            /// don't have a account
            BottomAccountTextWithButton(
              title: 'Already have an account?',
              subTitleBtn: 'Login',
              onPressed: () {
                Get.to(()=> const LoginScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
