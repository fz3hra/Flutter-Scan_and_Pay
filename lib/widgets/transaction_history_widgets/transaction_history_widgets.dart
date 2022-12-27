import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Sent to Azan Ibri",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Gap(12),
                    Text(
                      "12 July, 2022",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF8692A6),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "\n\$ 30,000",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFFFF3B30),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 5,
            thickness: 2,
            indent: 15,
            endIndent: 15,
            color: Color(0xFF8692A6),
          ),
        ],
      ),
    );
  }
}
