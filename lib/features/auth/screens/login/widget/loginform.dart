import 'package:appdrivepattern/common/widget/text/common_text_bold.dart';
import 'package:appdrivepattern/common/widget/text_form_field/common_text_form_field.dart';
import 'package:appdrivepattern/utils/constants/enums.dart';
import 'package:appdrivepattern/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// username
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.person),
            SizedBox(
              width: RSizes.sm,
            ),
            TitleTextBold(
              title: 'Username',
              textSizes: TextSizes.medium,
            )
          ],
        ),
        CommonTextField()
        /// password

        /// forgot password
      ],
    );
  }
}
