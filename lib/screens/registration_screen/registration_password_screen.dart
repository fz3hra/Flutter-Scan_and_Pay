import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scan_and_pay/config/routes.dart';
import 'package:scan_and_pay/utils/extensions/navigators_extensions.dart';
import 'package:scan_and_pay/utils/global_keys/global_keys.dart';

class RegistrationPasswordScreen extends StatelessWidget {
  const RegistrationPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Password"),
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
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type a password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
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
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type password again",
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            const Gap(28),
            Row(
              children: const [
                Icon(
                  Icons.check_circle,
                  color: Color(0xFF08AD36),
                ),
                Gap(8),
                Text(
                  "Minimum of 8 characters",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Gap(12),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 4.0,
                    right: 4.0,
                  ),
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Gap(8),
                const Text(
                  "One UPPERCASE character",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Gap(12),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 4.0,
                    right: 4.0,
                  ),
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Gap(12),
                const Text(
                  "One number of unique character",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
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
                            Routes.registrationUserDetaiLScreen,
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
