import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scan_and_pay/config/routes.dart';
import 'package:scan_and_pay/utils/extensions/navigators_extensions.dart';
import 'package:scan_and_pay/utils/global_keys/global_keys.dart';
import 'package:scan_and_pay/utils/text_constants/text_constants.dart';

class RegistrationSecondScreen extends StatelessWidget {
  const RegistrationSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("OTP"),
            const Gap(16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Color(0xffeeeeee),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ]),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "123456"),
              ),
            ),
            const Gap(12),
            const Text(
              TextConstants.OTPText,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: Align(
                // alignment: FractionalOffset.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          GlobalKeys.mainListNav.currentState!.context
                              .appPushNamed(
                            Routes.registrationPasswordScreen,
                          );
                        },
                        child: Text('Next'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xFF0D47A1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
