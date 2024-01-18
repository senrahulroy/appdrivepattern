
import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';


class FooterSocialButtons extends StatelessWidget {
  const FooterSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButtons(image: AssetImage(RImages.google)),
        const SizedBox(width: RSizes.spaceBtwItems),

      ],
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key, required this.image,
  });

  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: RColors.grey),
          borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 1.50,
            offset: Offset(0.75, 0.75),
            spreadRadius: 0,
          ),BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 1.50,
            offset: Offset(-0.75, -0.75),
            spreadRadius: 0,
          )
        ],

      ),
      child: IconButton(
        onPressed: () {},
        icon: Image(
            width: RSizes.iconMd,
            height: RSizes.iconMd,
            image: image //AssetImage(EStoreImages.google)
        ),
      ),
    );
  }
}