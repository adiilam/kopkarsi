import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 230,
      margin: EdgeInsets.only(
        right: defaultMargin,
        left: defaultMargin,
        top: defaultMargin,
      ),
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            height: 40,
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
                hint: Text(
                  'Jenis Transaksi',
                  style: subtitleTextStyle,
                ),
                items: [
                  DropdownMenuItem<String>(
                    value: 'SHU',
                    child: Text(
                      'SHU',
                      style: subtitleTextStyle,
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Tabungan',
                    child: Text(
                      'Tabungan',
                      style: subtitleTextStyle,
                    ),
                  ),
                ],
                onChanged: (value) {
                  // Handle value change
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
