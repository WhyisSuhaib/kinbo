import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinbo/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:kinbo/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:kinbo/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:kinbo/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:kinbo/features/authentication/screens/onboarding/widgets/onboardingpage.dart';
import 'package:kinbo/utils/constants/image_strings.dart';
import 'package:kinbo/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: SImage.onBoardingImage1,
                title: STexts.onBoardingTitle1,
                subtitle: STexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SImage.onBoardingImage2,
                title: STexts.onBoardingTitle2,
                subtitle: STexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SImage.onBoardingImage3,
                title: STexts.onBoardingTitle3,
                subtitle: STexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}


