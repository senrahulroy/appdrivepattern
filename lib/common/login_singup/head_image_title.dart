

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/enums.dart';
import '../widget/image/common_image.dart';
import '../widget/text/common_text_bold.dart';

class HeadSectionWithImage extends StatelessWidget {
  const HeadSectionWithImage({
    super.key,
    required this.image,
    required this.bottomTitle,
    this.isBack = true,
    this.isBackBtnVisible = false,
    this.onPressed,
  });

  final String image, bottomTitle;
  final bool isBack;
  final bool isBackBtnVisible;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Stack(
        children: [
          Positioned(
              left: 0,
              top: 75,
              child: TextButton(
                  onPressed: isBack
                      ? () {
                    Get.back();
                  }
                      : onPressed,
                  child: isBackBtnVisible
                      ? const Icon(Icons.arrow_back)
                      : const SizedBox())),

          /// title
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: Column(
              children: [
                ImageOnly(imageUrl: image),
                TitleTextBold(
                  title: bottomTitle,
                  textSizes: TextSizes.medium,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
