import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kinbo/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:kinbo/utils/constants/sizes.dart';
import 'package:kinbo/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            Text(STexts.forgetPassTitle,style: Theme.of(context).textTheme
                .headlineMedium,),
            const SizedBox(height: SSizes.spaceBtwItems,),
            Text(STexts.forgetPassSub,style: Theme.of(context).textTheme
                .labelMedium,),
            const SizedBox(height: SSizes.spaceBtwItems * 2,),

            ///Text Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: STexts.email,
                prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwItems,),

            ///Submit Button
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed:
            ()=> Get.off(()=> const ResetPassword()), child:
            const Text(STexts.submit)))

          ],
        ),

      ),
    );
  }
}
