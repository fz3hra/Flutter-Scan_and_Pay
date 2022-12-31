import 'package:flutter/material.dart';
import 'package:scan_and_pay/config/routes.dart';
import 'package:scan_and_pay/screens/screen_exports.dart';
import 'package:scan_and_pay/utils/global_keys/global_keys.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        Routes.scanScreen: (context) => const ScanScreen(),
        Routes.qrscannerScreen: (context) => const QrscannerScreen(),
        Routes.qrcaptureScreen: (context) => const QrcaptureScreen(),
        Routes.qrconfirmScreen: (context) => const QrconfirmScreen(),
      },
    );
  }
}
