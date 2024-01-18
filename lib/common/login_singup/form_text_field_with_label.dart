import 'package:flutter/material.dart';

import '../../utils/constants/enums.dart';
import '../../utils/constants/sizes.dart';
import '../widget/text/common_text_bold.dart';

class FormTextFieldWithLabel extends StatelessWidget {
  const FormTextFieldWithLabel({
    super.key,
    required this.label,
    this.labelIcon,
    required this.textField,
    this.spaceLeftRight = 10.0,
    this.spaceBtnLabelAndTextField = RSizes.sm,
    this.textSizes = TextSizes.small,
  });

  final String label;
  final Widget? labelIcon;
  final Widget textField;
  final TextSizes textSizes;
  final double spaceLeftRight, spaceBtnLabelAndTextField;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: spaceLeftRight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              labelIcon ?? const SizedBox(),
              const SizedBox(width: RSizes.sm),
              TitleTextBold(
                title: label,
                textSizes: textSizes,
              )
            ],
          ),
          SizedBox(height: spaceBtnLabelAndTextField),
          textField
        ],
      ),
    );
  }
}
