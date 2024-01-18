import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({
    super.key,
    this.dividerText,
  });


  final String? dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: RColors.darkerGrey.withOpacity(0.3),
            thickness: 0.5,
            indent: 40,
            endIndent: 10,
          ),
        ),
        Text(dividerText ?? '',style: const TextStyle(
          color: Color(0xFF413E3E),
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,

        ),),
          Flexible(
          child: Divider(
            color:  RColors.darkerGrey.withOpacity(0.3),
            thickness: 0.5,
            indent: 10,
            endIndent: 40,
          ),
        ),
      ],
    );
  }
}