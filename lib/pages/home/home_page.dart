import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';
import 'package:kopkarsi/widgets/notif_card.dart';
import 'package:kopkarsi/widgets/wallet_card.dart';
import 'package:kopkarsi/widgets/products_card.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            const SizedBox(height: 30.0),
            Row(
              children: [
                Container(
                  width: 63,
                  height: 63,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/image_splash.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Nikmati kemudahan layanan KOPKARSI dari genggamanmu',
                      style: backgroundTextStyle.copyWith(
                        fontSize: 15.0,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 35),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: defaultMargin,
                    ),
                    const Row(
                      children: [
                        WalletCard(),
                        WalletCard(),
                        WalletCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //NOTED: Title Notifications
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
                    'Informasi  Terbaru',
                    style: titleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Lihat Semua',
                    style: priceTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),

            //NOTED: Card Notifications
            Container(
              margin: const EdgeInsets.only(
                top: 5,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: defaultMargin,
                      right: defaultMargin,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: defaultMargin,
                          ),
                          const Row(
                            children: [
                              NotificationsCard(),
                              NotificationsCard(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  //NOTED: Product Title
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
                          'Rekomendasi Produk',
                          style: titleTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Lihat Semua',
                          style: priceTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //NOTED: Card Product
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: defaultMargin,
                            right: defaultMargin,
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: defaultMargin,
                                ),
                                const Row(
                                  children: [
                                    ProductsCard(),
                                    ProductsCard(),
                                    ProductsCard(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
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
          content(),
        ],
      ),
    );
  }
}
