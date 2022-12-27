import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scan_and_pay/utils/image_constants/image_constants.dart';

class QrscannerScreen extends StatelessWidget {
  const QrscannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.close),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.save_alt),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF101010),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(140),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(ImageConstants.qrcodeBackground),
                Image.asset(ImageConstants.qrCode),
              ],
            ),
            const Gap(16),
            Expanded(
              child: Container(
                width: 214,
                child: const Text(
                  "Share your Business QR code to receive payment",
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Image.asset(ImageConstants.scan_white),
            const Gap(24),
          ],
        ),
      ),
    );
  }
}
