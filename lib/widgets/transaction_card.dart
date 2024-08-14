import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 230,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor3,
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
            // padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            width: 350,
            height: 50,
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
                  style: subtitleTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: regular,
                  ),
                ),
                items: [
                  DropdownMenuItem<String>(
                    value: 'SHU',
                    child: Text(
                      'SHU',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Tabungan',
                    child: Text(
                      'Tabungan',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ],
                onChanged: (value) {
                  // Handle value change
                },
              ),
            ),
          ),

          //START DATE
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            // padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Dari Tanggal',
                            hintStyle: subtitleTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/icon_calendar.png',
                        width: 17,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //END DATE
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            // padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Sampai Tanggal',
                            hintStyle: subtitleTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/icon_calendar.png',
                        width: 17,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
