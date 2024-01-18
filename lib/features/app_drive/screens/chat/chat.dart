import 'package:appdrivepattern/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: RColors.secondary,
      body: Center(
        child: Icon(Iconsax.message),
      ),
    );
  }
}
