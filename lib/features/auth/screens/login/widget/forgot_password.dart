import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key, this.onPressed, required this.title,
  });

  final Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        /// forget password
        TextButton(
          onPressed: onPressed,
          child:   Text(
            title,
            style: const TextStyle(
              color: RColors.secondary,
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        )
      ],
    );
  }
}