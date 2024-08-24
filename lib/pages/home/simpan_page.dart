import 'package:flutter/material.dart';
import 'package:kopkarsi/theme.dart';

class SimpanPage extends StatelessWidget {
  const SimpanPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: const EdgeInsets.all(20),
        color: backgroundColor,
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
                      style: titleTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      '7474 - Quality Control',
                      style: titleTextStyle.copyWith(
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

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 30,
        ),
        child: Row(
          children: [
            Text(
              'Informasi Simpanan',
              style: titleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              width: 110,
            ),
            Text(
              'Lihat Semua',
              style: priceTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
            // const SizedBox(
            //   height: 30,
            // ),
            // Container(
            //   margin: const EdgeInsets.only(
            //     top: 30,
            //     left: 30,
            //   ),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         SizedBox(
            //           width: defaultMargin,
            //         ),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
