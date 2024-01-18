import 'package:appdrivepattern/common/widget/image/common_image.dart';
import 'package:appdrivepattern/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ImageOnly(imageUrl: RImages.logo),
      ),
    );
  }
}
