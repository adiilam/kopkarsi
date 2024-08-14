import 'package:kopkarsi/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 10,
        left: 10,
        bottom: 10,
        top: 10,
      ),
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      width: 350,
      height: 62,
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/arrow.png',
                width: 40,
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem epsum is simply dummy text',
                style: subtitleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Sabtu, 18 Februari 2023',
                style: subtitleTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: regular,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '- Rp. 10.000',
                style: priceTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Pukul, 15:00 WIB',
                style: subtitleTextStyle.copyWith(
                  fontSize: 8,
                  fontWeight: regular,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
