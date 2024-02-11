import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SLoginHeader extends StatelessWidget {
  const SLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(
          width: SSizes.loginLogoWidth,
          height: SSizes.loginLogoHeight,
          image: AssetImage(
              dark ? SImage.lightAppLogo : SImage.darkAppLogo)),
      Text(
        STexts.loginTitle,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      const SizedBox(
        height: SSizes.sm,
      ),
      Text(
        STexts.loginSub,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ]);
  }
}