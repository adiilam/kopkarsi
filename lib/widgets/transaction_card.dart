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
          //Start Date
          // // Container(
          // //   margin: EdgeInsets.only(top: defaultMargin),
          // //   child: Column(
          // //     crossAxisAlignment: CrossAxisAlignment.start,
          // //     children: [
          // //       Text(
          // //         'Dari Tanggal',
          // //         style: subtitleTextStyle.copyWith(
          // //           fontSize: 14,
          // //           fontWeight: regular,
          // //         ),
          // //       ),
          // //       const SizedBox(
          // //         height: 12,
          // //       ),
          // //       Container(
          // //         height: 50,
          // //         padding: const EdgeInsets.symmetric(
          // //           horizontal: 16,
          // //         ),
          // //         decoration: BoxDecoration(
          // //           color: backgroundColor2,
          // //           borderRadius: BorderRadius.circular(12),
          // //         ),
          // //         child: Center(
          // //           child: Row(
          // //             mainAxisAlignment: MainAxisAlignment.end,
          // //             children: [
          // //               Image.asset(
          // //                 'assets/icon_calendar.png',
          // //                 width: 17,
          // //               ),
          // //             ],
          // //           ),
          // //         ),
          // //       ),
          //     ],
          //   ),
          // ),
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

          //End Date
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
