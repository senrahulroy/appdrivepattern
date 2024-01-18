

import 'package:flutter/material.dart';

class BottomAccountTextWithButton extends StatelessWidget {
  const BottomAccountTextWithButton({
    super.key,
    required this.title,
    required this.subTitleBtn,
    this.onPressed,
  });
  final String title, subTitleBtn;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style:  const TextStyle(fontSize: 15, color: Colors.black),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            subTitleBtn,
            style: TextStyle(fontSize: 15, color: Colors.blue),
          ),
        )
      ],
    );
  }
}