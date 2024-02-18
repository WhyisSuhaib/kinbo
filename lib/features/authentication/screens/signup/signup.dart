import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinbo/common/widgets/login_signup/form_divider.dart';
import 'package:kinbo/common/widgets/login_signup/social_button.dart';
import 'package:kinbo/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:kinbo/utils/constants/sizes.dart';
import 'package:kinbo/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(
                STexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),

              ///Form
              const SSignupForm(),
              const SizedBox(height: SSizes.spaceBtwSections,),

              ///Divider
              SFormDivider(dividerText: STexts.orSignInWith.capitalize!),
              const SizedBox(height: SSizes.spaceBtwSections,),

              ///Social Button
              const SSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}


