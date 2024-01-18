import 'package:appdrivepattern/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class TitleTextBold extends StatelessWidget {
  const TitleTextBold({
    super.key,
    required this.title,
    this.textSizes = TextSizes.small,
    this.color,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.isBold = true,
  });

  final String title;
  final TextSizes textSizes;
  final Color? color;
  final bool isBold;
  final int maxLines;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: TextStyle(
        color: Color(0xFF1E1E1E),
        fontSize:
        textSizes == TextSizes.small ? 18 :
        textSizes == TextSizes.medium ? 24 :
        textSizes == TextSizes.large ? 30 : 18,
        fontFamily: 'Inter',
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        height: 0,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
