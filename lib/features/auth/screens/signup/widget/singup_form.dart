import 'package:appdrivepattern/common/widget/button/common_primary.dart';
import 'package:appdrivepattern/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/login_singup/form_text_field_with_label.dart';
import '../../../../../common/widget/text_form_field/common_text_form_field.dart';

class SingUpForm extends StatelessWidget {
  const SingUpForm({super.key});

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
          const FormTextFieldWithLabel(
              label: 'Passwort',
              textField: CommonTextField(
                hintText: 'Passwort',
              )),

          const SizedBox(height: RSizes.spaceBtwItems),
          const FormTextFieldWithLabel(
              label: 'Bestätigen',
              textField: CommonTextField(
                hintText: 'Bestätigen',
              )),
          const SizedBox(height: RSizes.spaceBtwItems),
          /// login btn
          CommonPrimaryButton(
            btnTitle: 'Account erstellen',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
