import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scan_and_pay/config/routes.dart';
import 'package:scan_and_pay/utils/extensions/navigators_extensions.dart';
import 'package:scan_and_pay/utils/global_keys/global_keys.dart';

class RegistrationUserDetailScreen extends StatelessWidget {
  const RegistrationUserDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("First Name"),
              const Gap(16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Color(0xffeeeeee),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ]),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Aminu",
                  ),
                ),
              ),
              const Gap(16),
              const Text("Middle Name"),
              const Gap(16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Color(0xffeeeeee),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ]),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Adeshina",
                  ),
                ),
              ),
              const Gap(16),
              const Text("Last Name"),
              const Gap(16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Color(0xffeeeeee),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ]),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Abdulrasheed",
                  ),
                ),
              ),
              const Gap(16),
              const Text("Email Address"),
              const Gap(16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Color(0xffeeeeee),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ]),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "adeshinarasheed2000@gmail.com",
                  ),
                ),
              ),
              const Gap(16),
              const Text("Email Address"),
              const Gap(16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Color(0xffeeeeee),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ]),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "adeshinarasheed2000@gmail.com",
                  ),
                ),
              ),
              const Gap(12),
              Align(
                // alignment: FractionalOffset.bottomCenter,
                child: SingleChildScrollView(
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
                            GlobalKeys.mainNav.currentState!.context
                                .appPushNamed(
                              Routes.homescreen,
                            );
                          },
                          child: Text('Done'),
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
      ),
    );
  }
}
