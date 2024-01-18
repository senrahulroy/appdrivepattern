import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../utils/constants/colors.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {super.key,
      this.suffix,
      this.controller,
      this.focusNode,
      this.isObscureText,
      this.readOnly,
      this.suffixIconColor,
      this.inputFormatters,
      this.textInputType,
      this.autofocus,
      this.hintText});

  final String? hintText;
  final Widget? suffix;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? isObscureText, readOnly, autofocus;

  final Color? suffixIconColor;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? textInputType;

  ////
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
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
        controller: controller,
        focusNode: focusNode,
        obscureText: isObscureText ?? false,
        obscuringCharacter: '*',
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textCapitalization: TextCapitalization.words,
        inputFormatters: inputFormatters,
        readOnly: readOnly ?? false,
        autofocus: autofocus ?? false,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: RColors.grey,
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),

          ///When text field is selected
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 1,
              color: RColors.black,
            ),
          ),

          ///When text field is enabled
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: RColors.secondary),
          ),

          ///When error is shown
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.red,
            ),
          ),
          suffixIcon: suffix,
          suffixIconColor: suffixIconColor,

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
    );
  }
}
