import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 3,
              spreadRadius: 0,
              offset: Offset(2, 2),
            ),
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 3,
              offset: Offset(-2, -2),
              spreadRadius: 0,
            )
          ],
        ),
        child: TextFormField(

          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,

            ///When text field is selected
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 1,
                color: RColors.black,
              ),
             ),
            border: InputBorder.none,
            ///When text field is enabled
            enabledBorder: InputBorder.none,
            ///When text field is disabled
            disabledBorder:  InputBorder.none,

            ///When error is shown
            // errorBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10),
            //   borderSide: const BorderSide(
            //     width: 1,
            //     color: Colors.red,
            //   ),
            // ),

            ///When error is shown and text field is selected
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 1,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
