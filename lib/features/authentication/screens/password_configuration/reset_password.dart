import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinbo/utils/constants/image_strings.dart';
import 'package:kinbo/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          children: [
            ///Image
            Image(
              image:  const AssetImage(SImage.deliveredEmailIllus),
              width: SHelperFunctions.screenWidth()*0.6,
            ),
            const SizedBox(height: SSizes.spaceBtwSections,),

            ///Title & Subtitle
            Text(STexts.changePassTitle, style: Theme.of(context).textTheme
                .headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: SSizes.spaceBtwItems,),
            Text(STexts.changePassSub, style: Theme.of(context).textTheme
                .labelMedium,textAlign: TextAlign.center,),
            const SizedBox(height: SSizes.spaceBtwItems,),

            const SizedBox(height: SSizes.spaceBtwItems,),
            ///Buttons
            SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor: SColors.primary), child: const Text
                    (STexts.done),)),
            const SizedBox(height: SSizes.spaceBtwItems,),
            ///Resend Email Buttons
            SizedBox(width: double.infinity,
                child: TextButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor: SColors.primary), child: const Text
                    (STexts.resendEmail),)),
          ],
        )),
      ),
    );
  }
}
