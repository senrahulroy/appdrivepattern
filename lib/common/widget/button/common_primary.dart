import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CommonPrimaryButton extends StatelessWidget {
  const CommonPrimaryButton(
      {super.key,
      this.spaceLeftRight = 40,
      this.btnHeight = 10,
      required this.btnTitle,
      this.btnBgColor = RColors.secondary,
      this.onPressed});

  final double spaceLeftRight, btnHeight;
  final String btnTitle;
  final Color? btnBgColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: spaceLeftRight,
      ),
      child:  SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric( vertical: btnHeight),
              backgroundColor: RColors.secondary),
          child:  Text(
            btnTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      )
    );
  }
}
