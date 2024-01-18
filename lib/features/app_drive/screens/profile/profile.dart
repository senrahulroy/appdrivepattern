import 'package:appdrivepattern/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: RColors.secondary.withOpacity(0.5),
      body: const Center(
        child: Icon(Iconsax.user),
      ),
    );
  }
}
