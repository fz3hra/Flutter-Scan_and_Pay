import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:scan_and_pay/screens/onBoarding_screen/onBoarding_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: AnimatedSplashScreen(
        duration: 5000,
        splashIconSize: 400,
        nextScreen: OnBoardingScreen(),
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
        splash: Lottie.asset(
          "assets/splash/51406-qr-code-scan.json",
        ),
      ),
    );
  }
}
