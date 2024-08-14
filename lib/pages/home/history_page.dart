import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';
import 'package:kopkarsi/widgets/history_card.dart';
import 'package:kopkarsi/widgets/transaction_card.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: const EdgeInsets.all(20),
        color: primaryColor,
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/image_profil.png',
                  ),
                  radius: 20.0,
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmad habibi',
                      style: backgroundTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      '7474 - Quality Control',
                      style: backgroundTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: regular,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                const Spacer(),
                Expanded(
                  flex: 50,
                  child: SizedBox(
                    height: 30.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Cari',
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.notifications, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget transaction() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: defaultMargin,
          bottom: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backgroundColor3,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(defaultMargin),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TransactionCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: backgroundColor3,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Riwayat',
                    style: titleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Lihat Semua',
                    style: priceTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),

            //NOTED: HistoryCard
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      right: 10,
                      left: 10,
                      bottom: defaultMargin,
                    ),
                    child: const SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Row(
                        children: [
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Column(
                            children: [
                              HistoryCard(),
                              SizedBox(height: 10),
                              HistoryCard(),
                              SizedBox(height: 10),
                              HistoryCard(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          header(),
          transaction(),
          content(),
        ],
      ),
    );
  }
}
