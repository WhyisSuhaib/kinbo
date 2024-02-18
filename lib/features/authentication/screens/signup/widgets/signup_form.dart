import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kinbo/features/authentication/screens/signup/verify_email.dart';
import 'package:kinbo/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:kinbo/utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: STexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: SSizes.spaceBtwinputfield,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: STexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: SSizes.spaceBtwinputfield,
        ),

        ///UserName
        TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: STexts.userName,
                prefixIcon: Icon(Iconsax.user_edit))),
        const SizedBox(
          height: SSizes.spaceBtwinputfield,
        ),

        ///Email
        TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: STexts.email, prefixIcon: Icon(Iconsax.direct))),
        const SizedBox(
          height: SSizes.spaceBtwinputfield,
        ),

        ///Phone Number
        TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: STexts.phoneNo, prefixIcon: Icon(Iconsax.call))),
        const SizedBox(
          height: SSizes.spaceBtwinputfield,
        ),

        ///Password
        TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: STexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash))),
        const SizedBox(
          height: SSizes.spaceBtwinputfield,
        ),

        ///Terms and Conditions
        const STermsAndConditionCheckBox(),
        const SizedBox(
          height: SSizes.spaceBtwSections,
        ),

        ///Sign Up button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: ()=> Get.to(() =>const VerifyEmailScreen()),
            style: ElevatedButton.styleFrom(backgroundColor: SColors.primary),
            child: const Text(STexts.createAcc),
          ),
        ),
      ],
    ));
  }
}
