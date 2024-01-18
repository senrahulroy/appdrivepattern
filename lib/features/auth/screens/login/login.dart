import 'package:appdrivepattern/common/widget/image/common_image.dart';
import 'package:appdrivepattern/common/widget/text/common_text_bold.dart';
import 'package:appdrivepattern/features/auth/screens/login/widget/loginform.dart';
import 'package:appdrivepattern/utils/constants/colors.dart';
import 'package:appdrivepattern/utils/constants/enums.dart';
import 'package:appdrivepattern/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RColors.primary,
      body: Column(
        children: [
          /// title head
          Column(
            children: [
              ImageOnly(imageUrl: RImages.logo),
              TitleTextBold(
                title: 'Login bei ADHDrive',
                textSizes: TextSizes.medium,
              )
            ],
          ),

          /// login form field
            const LoginForm(),
          /// login Button

          /// other login
        ],
      ),
    );
  }
}
