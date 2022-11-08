import 'package:flutter/material.dart';
import 'package:scan_and_pay/screens/homepage_screen/homescreen.dart';
import 'package:scan_and_pay/screens/login_screen/login_screen.dart';
import 'package:scan_and_pay/screens/registration_screen/registration_screen.dart';
import 'package:scan_and_pay/screens/splash_screen/splash_screen.dart';
import 'package:scan_and_pay/utils/global_keys/global_keys.dart';

import 'config/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: GlobalKeys.mainNav,
      title: 'Flutter Scan And Pay App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => SplashScreen(),
        Routes.registrationScreen: (context) => RegistrationScreen(),
        Routes.loginScreen: (context) => const LoginScreen(),
        Routes.homescreen: (context) => const HomeScreen(),
      },
    );
  }
}
