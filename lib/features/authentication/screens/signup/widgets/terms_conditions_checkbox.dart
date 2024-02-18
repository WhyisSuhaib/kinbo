import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class STermsAndConditionCheckBox extends StatelessWidget {
  const STermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: SSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "${STexts.iAgree} ",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "${STexts.privacyPol} ",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? SColors.white : SColors.primary,
                decoration: TextDecoration.underline,
                decorationColor:
                dark ? SColors.white : SColors.primary,
              )),
          TextSpan(
              text: "${STexts.and} ",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "${STexts.termsOfUse} ",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                color: dark ? SColors.white : SColors.primary,
                decoration: TextDecoration.underline,
                decorationColor:
                dark ? SColors.white : SColors.primary,
              )),
        ])
        ),
      ],
    );
  }
}