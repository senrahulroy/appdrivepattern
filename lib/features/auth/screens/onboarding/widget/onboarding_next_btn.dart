import 'package:appdrivepattern/common/widget/button/common_primary.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controller/onboarding/onboarding_controller.dart';

class OnBoardingNexButton extends StatelessWidget {
  const OnBoardingNexButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      bottom: RDeviceUtils.getBottomNavigationBarHeight(),
      child: CommonPrimaryButton(
        onPressed: () => OnBoardingController.instance.nextPage(context),
        btnTitle: title,
      ),
    );
  }
}
