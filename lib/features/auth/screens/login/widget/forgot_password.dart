import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({
    super.key,
    this.onPressed,
    required this.title,
  });

  final Function()? onPressed;
  final String title;

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: check,
              onChanged: (value) {
                setState(() {
                  check = value ?? false;
                });
              },
            ),
            const Text(RTexts.rememberMe),
          ],
        ),

        /// forget password
        TextButton(
          onPressed: widget.onPressed,
          child: Text(
            widget.title,
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
