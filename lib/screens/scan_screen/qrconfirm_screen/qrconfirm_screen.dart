import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scan_and_pay/config/routes.dart';
import 'package:scan_and_pay/utils/image_constants/image_constants.dart';

class QrconfirmScreen extends StatelessWidget {
  const QrconfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Row(
            children: const [
              Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              Text(
                "back",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        title: const Text(
          "Confirm Store",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 178,
              child: const Text(
                "Add image here",
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(
                  color: Color(0xFF0000B8),
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const Gap(100),
            Container(
              width: 326,
              height: 64,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, Routes.qrconfirmScreen),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Continue to Payment"),
                    // TODO: change icon
                    Image.asset(ImageConstants.store),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
