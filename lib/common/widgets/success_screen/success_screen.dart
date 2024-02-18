import 'package:flutter/material.dart';
import 'package:kinbo/common/styles/spacing_styles.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpeacingStyle.paddingWithAppBarHeight* 2,
          child: Column(
            children: [
              ///Image
              Image(
                image:  AssetImage(image),
                width: SHelperFunctions.screenWidth()*0.6,
              ),
              const SizedBox(height: SSizes.spaceBtwSections,),

              ///Title & Subtitle
              Text(title, style: Theme.of(context).textTheme
                  .headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwItems,),
              Text(subTitle, style: Theme.of(context).textTheme
                  .labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwItems,),

              const SizedBox(height: SSizes.spaceBtwItems,),
              ///Buttons
              SizedBox(width: double.infinity,
                  child: ElevatedButton(onPressed: onPressed,
                    style: ElevatedButton.styleFrom(backgroundColor: SColors.primary), child: const Text
                      (STexts.SContinue),)),
            ],
          ),
        ),
      ),
    );
  }
}
