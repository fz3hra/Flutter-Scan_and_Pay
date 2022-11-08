import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:scan_and_pay/config/routes.dart';
import 'package:scan_and_pay/utils/extensions/navigators_extensions.dart';
import 'package:scan_and_pay/utils/global_keys/global_keys.dart';
import 'package:scan_and_pay/utils/text_constants/text_constants.dart';

class RegistrationFirstScreen extends StatelessWidget {
  const RegistrationFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Phone Number"),
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
            child: InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber value) {},
              inputDecoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "07032158668",
              ),
            ),
          ),
          const Gap(12),
          const Text(
            TextConstants.registrationText,
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
                          Routes.registrationSecondScreen,
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
    );
  }
}
