import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scan_and_pay/config/routes.dart';
import 'package:scan_and_pay/services/onboarding_services/onboarding_services.dart';
import 'package:scan_and_pay/utils/extensions/navigators_extensions.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          itemCount: OnBoardingServices.onboardingServicesLists.length,
          itemBuilder: (context, index) {
            var lengthLists = OnBoardingServices.onboardingServicesLists.length;
            var lists = OnBoardingServices.onboardingServicesLists[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(
                          int.parse(lists.onboardingColor),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 1.7,
                      width: MediaQuery.of(context).size.width,
                      child: index == 2
                          ? Stack(
                              children: [
                                Positioned(
                                  top: 100,
                                  left: 40,
                                  child: Image.asset(
                                    lists.onboardingImage,
                                  ),
                                ),
                                Positioned(
                                  top: 220,
                                  right: 20,
                                  child: Image.asset(
                                    lists.onboardingSecondImage!,
                                  ),
                                )
                              ],
                            )
                          : Image.asset(
                              lists.onboardingImage,
                            ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 24,
                        left: 16,
                      ),
                      child: Text(
                        lists.onboardingTitle,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Gap(8),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 16,
                      ),
                      child: Text(
                        lists.onboardingDescription,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
                // for the dots and continue button
                const Gap(40),
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Row(
                    children: List.generate(
                      lengthLists,
                      (dotIndex) => dotContainer(
                        dotIndex,
                        context,
                      ),
                    ),
                  ),
                ),
                const Gap(60),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: GestureDetector(
                    onTap: () =>
                        context.appPushNamed(Routes.registrationScreen),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }

  Widget dotContainer(dotIndex, context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(
            right: 15,
          ),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            // color: Colors.black,
            border: Border.all(
              color: currentIndex == dotIndex ? Colors.black : Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 2.4,
          left: 2.35,
          child: Container(
            margin: const EdgeInsets.only(
              right: 15,
            ),
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color:
                  currentIndex == dotIndex ? Colors.black : Color(0xFFC4C4C4),
            ),
          ),
        ),
      ],
    );
  }
}
