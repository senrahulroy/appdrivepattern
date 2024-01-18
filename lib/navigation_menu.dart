
import 'package:appdrivepattern/features/app_drive/screens/chat/chat.dart';
import 'package:appdrivepattern/features/app_drive/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/app_drive/screens/home/home.dart';
import 'utils/constants/colors.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor:   RColors.white,
          indicatorColor:   RColors.black.withOpacity(0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (ind) => controller.selectedIndex.value = ind,



          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
            NavigationDestination(icon: Icon(Iconsax.message), label: 'Chat'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController {

  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];
}