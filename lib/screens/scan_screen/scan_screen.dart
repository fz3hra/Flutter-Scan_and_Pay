import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scan_and_pay/config/routes.dart';
import 'package:scan_and_pay/utils/image_constants/image_constants.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (val) => Navigator.pop(context),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "SCAN AND PAY",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0000B8),
                ),
              ),
            ),
            const Gap(26),
            Image.asset(ImageConstants.scanImage),
            const Gap(16),
            Container(
              width: 256,
              child: const Text(
                "Scan a shop QR tag to make payment within seconds.",
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Gap(210),
            Container(
              width: 326,
              height: 64,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, Routes.qrscannerScreen),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                child: const Text("Scan QR Code"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
