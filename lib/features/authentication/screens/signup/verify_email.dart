import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinbo/common/widgets/success_screen/success_screen.dart';
import 'package:kinbo/features/authentication/screens/login/login.dart';
import 'package:kinbo/utils/constants/image_strings.dart';
import 'package:kinbo/utils/constants/sizes.dart';
import 'package:kinbo/utils/constants/text_strings.dart';
import 'package:kinbo/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(SImage.deliveredEmailIllus),
                width: SHelperFunctions.screenWidth()*0.6,
              ),
              const SizedBox(height: SSizes.spaceBtwSections,),

              ///Title & Subtitle
            Text(STexts.confirmEmailTitle, style: Theme.of(context).textTheme
                .headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwItems,),
              Text("suhaibahmed114@gmail.com", style: Theme.of(context)
                  .textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwItems,),
              Text(STexts.confirmEmailSub, style: Theme.of(context).textTheme
                  .labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwItems,),
              ///Buttons
              SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.to(() =>
                SuccessScreen(
                  image: SImage.staticSuccessIllus,
                  title: STexts.yourAccCreateTitle,
                  subTitle: STexts.yourAccCreateSub,
                  onPressed: () => Get.to(()=> const LoginScreen()),
                )),
                  style: ElevatedButton.styleFrom(backgroundColor: SColors.primary), child: const Text
                  (STexts.SContinue),)),
              const SizedBox(height: SSizes.spaceBtwItems,),
          TextButton(onPressed: (){}, child: const Text
            (STexts.resendEmail)),
            ],
          ),
        ),
      ),
    );
  }
}
