import 'package:scan_and_pay/models/onboarding_models.dart';
import 'package:scan_and_pay/utils/image_constants/image_constants.dart';

class OnBoardingServices {
  static List<OnBoardingModels> onboardingServicesLists = [
    OnBoardingModels(
      onboardingColor: '0xFF9E6FC6',
      onboardingImage: ImageConstants.onboardingPaymentSuccessImage,
      onboardingTitle: 'Easy Payments \nin a few taps',
      onboardingDescription: 'Pay business  owners fast \nand easily.',
    ),
    OnBoardingModels(
      onboardingColor: '0xFF4285F4',
      onboardingImage: ImageConstants.onboardingScanImage,
      onboardingTitle: 'Scan business tag \nand pay',
      onboardingDescription:
          'Pay business  by scanning their business \ntag and pay.',
    ),
    OnBoardingModels(
      onboardingColor: '0xFF5BBC75',
      onboardingImage: ImageConstants.onoardingPaypalImage,
      onboardingSecondImage: ImageConstants.onboardingCreditCardImage,
      onboardingTitle: 'Multiple Choice \nPayment Method',
      onboardingDescription:
          'Choose from our diffrent payment options \nto make payment.',
    ),
  ];
}
