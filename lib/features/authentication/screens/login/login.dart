import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinbo/common/styles/spacing_styles.dart';
import 'package:kinbo/common/widgets/login_signup/form_divider.dart';
import 'package:kinbo/features/authentication/screens/login/widgets/login_form.dart';
import 'package:kinbo/features/authentication/screens/login/widgets/login_header.dart';
import 'package:kinbo/common/widgets/login_signup/social_button.dart';
import 'package:kinbo/utils/constants/colors.dart';
import 'package:kinbo/utils/constants/image_strings.dart';
import 'package:kinbo/utils/constants/sizes.dart';
import 'package:kinbo/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpeacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              SLoginHeader(dark: dark),

              ///Form
              const SLoginForm(),

              ///Divider
              SFormDivider(dividerText: STexts.orSignInWith.capitalize!,),
              const SizedBox(
                height: SSizes.spaceBtwItems,
              ),

              ///Footer
              const SSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}








