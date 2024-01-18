import 'package:appdrivepattern/common/widget/button/common_primary.dart';
import 'package:appdrivepattern/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/login_singup/form_text_field_with_label.dart';
import '../../../../../common/widget/text_form_field/common_text_form_field.dart';
import '../../../../../navigation_menu.dart';

class SingUpForm extends StatefulWidget {
  const SingUpForm({super.key});

  @override
  State<SingUpForm> createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {
  bool isPassVisible = true;
  bool isPassCVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// username
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: FormTextFieldWithLabel(
                  label: 'Nachname',
                  textField: CommonTextField(
                    hintText: 'Nachname',
                  ),
                ),
              ),
              SizedBox(width: RSizes.xs),
              Expanded(
                child: FormTextFieldWithLabel(
                  label: 'Vorname',
                  textField: CommonTextField(
                    hintText: 'Vorname',
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: RSizes.spaceBtwItems),

          /// email
          const FormTextFieldWithLabel(
              label: 'Email',
              textField: CommonTextField(
                hintText: 'Email',
              )),
          const SizedBox(height: RSizes.spaceBtwItems),
            FormTextFieldWithLabel(
              label: 'Password',
              textField: CommonTextField(
                isObscureText: isPassVisible,
                hintText: 'Password',
                suffix: GestureDetector(
                    onTap: () {
                      setState(() {
                        isPassVisible =! isPassVisible;
                      });

                    },
                    child: Icon(isPassVisible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined)),
              )),

          const SizedBox(height: RSizes.spaceBtwItems),
            FormTextFieldWithLabel(
              label: 'Confirm password',
              textField: CommonTextField(
                isObscureText: isPassCVisible,
                hintText: 'Confirm password',
                suffix: GestureDetector(
                    onTap: () {
                      setState(() {
                        isPassCVisible =! isPassCVisible;
                      });

                    },
                    child: Icon(isPassCVisible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined)),
              )),
          const SizedBox(height: RSizes.spaceBtwItems),
          /// login btn
          CommonPrimaryButton(
            btnTitle: 'Create my account',
            onPressed: () {
              Get.to(()=>const NavigationMenu());
            },
          )
        ],
      ),
    );
  }
}
