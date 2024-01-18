import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// variables
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  /// update current index when page scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
    debugPrint('Page index : $currentPageIndex');
  }


  /// update current index & jump to next page
  void nextPage(index) {
    if(currentPageIndex.value == 1){
      debugPrint("Current Page${currentPageIndex.value}");
      Get.to( () =>const LoginScreen());
    }else {
      int page = currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }

  }

  /// update current index & jump to the last page
  void skipPage(index) {
    currentPageIndex.value = 1;
    pageController.jumpToPage(1);
  }
}
