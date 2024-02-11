import 'package:flutter/material.dart';
import 'package:kinbo/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:kinbo/utils/constants/colors.dart';
import 'package:kinbo/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
        top: SDeviceUtils.getAppBarHeight(),
        right: SSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child:  Text("Skip",style: TextStyle(color: dark? SColors.secondary : SColors.primary)),
        ));
  }
}