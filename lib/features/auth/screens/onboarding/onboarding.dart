import 'package:appdrivepattern/features/auth/screens/onboarding/widget/onboarding_next_btn.dart';
import 'package:appdrivepattern/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controller/onboarding/onboarding_controller.dart';
import 'widget/onboarding_page.dart';
import 'widget/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      backgroundColor: RColors.primary,
      body: Stack(
        children: [
          /// horizontal Scroller Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: RImages.logo,
                title: RTexts.onBoardingTitle1,
                subTitle: RTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                upperTitle: 'Dein ADHS-Archiv',
                image: RImages.chatGptRobot,
                subTitle: RTexts.onBoardingSubTitle2,
              ),
            ],
          ),

          /// skip button
          const OnBoardingSkip(),

          /// next btn
          Obx(
            () => OnBoardingNexButton(
              title: controller.currentPageIndex.value == 0
                  ? 'Los geht´s'
                  : 'Weiter',
            ),
          )
        ],
      ),
    );
  }
}
