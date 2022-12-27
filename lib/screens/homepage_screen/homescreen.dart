import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scan_and_pay/config/routes.dart';
import 'package:scan_and_pay/services/transaction_history_services/transaction_history_services.dart';
import 'package:scan_and_pay/utils/image_constants/image_constants.dart';
import 'package:scan_and_pay/widgets/transaction_history_widgets/transaction_history_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pushNamed(context, Routes.scanScreen),
          child: Image.asset(ImageConstants.leadingIcon),
        ),
        actions: [
          Image.asset(ImageConstants.actionIcon),
        ],
      ),
      body: Column(
        children: [
          const Gap(16),
          Center(
            child: Container(
              height: 160,
              width: 320,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF8D2),
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(8, 9),
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(),
                        const Text("Total balance"),
                        const Icon(Icons.remove_red_eye),
                      ],
                    ),
                    const Text(
                      "\n\$ 238.46",
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Gap(54),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: const BoxDecoration(
              color: Color(0xFF0D47A1),
            ),
            child: const Center(
              child: Text(
                "Transaction History",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const Gap(18),
          SizedBox(
            height: 450,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: TransactionHistoryServices
                  .transactionHistoryServicesLists.length,
              itemBuilder: (BuildContext context, int index) {
                return const TransactionHistoryWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
