import 'package:appdrivepattern/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: RColors.primary,
      body: Center(
        child: Icon(Iconsax.home),
      ),
    );
  }
}
