import 'package:flutter/material.dart';
import 'package:scan_and_pay/config/routes.dart';
import 'package:scan_and_pay/screens/registration_screen/registration_first_screen.dart';
import 'package:scan_and_pay/screens/registration_screen/registration_password_screen.dart';
import 'package:scan_and_pay/screens/registration_screen/registration_second_screen.dart';
import 'package:scan_and_pay/screens/registration_screen/registration_user_detail_screen.dart';
import 'package:scan_and_pay/utils/global_keys/global_keys.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Register",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Navigator(
        key: GlobalKeys.mainListNav,
        initialRoute: Routes.registrationScreen,
        onGenerateRoute: (RouteSettings settings) {
          Widget page;
          switch (settings.name) {
            case Routes.registrationScreen:
              page = const RegistrationFirstScreen();
              break;
            case Routes.registrationSecondScreen:
              page = const RegistrationSecondScreen();
              break;
            case Routes.registrationPasswordScreen:
              page = const RegistrationPasswordScreen();
              break;
            case Routes.registrationUserDetaiLScreen:
              page = const RegistrationUserDetailScreen();
              break;
            default:
              page = const RegistrationFirstScreen();
              break;
          }
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) => page,
            transitionDuration: const Duration(seconds: 0),
          );
        },
      ),
    );
  }
}
