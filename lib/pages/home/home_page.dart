// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:kopkarsi/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/image_profil.png'),
                      ),
                    ),
                  ),
                ],
              ),
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
            // Container(
            //   margin: const EdgeInsets.only(top: 15),
            //   height: 30,
            //   decoration: BoxDecoration(
            //     color: backgroundColor2,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Row(
            //     children: [
            //       const SizedBox(
            //         width: 10,
            //       ),
            //       Expanded(
            //         child: TextFormField(
            //           style: titleTextStyle,
            //           decoration: InputDecoration.collapsed(
            //             hintText: 'Search',
            //             hintStyle: subtitleTextStyle,
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/input_search.png',
                      width: 116,
                      height: 30,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/icon_cart_black.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Image.asset(
                      'assets/icon_notification_black.png',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
      ],
    );
  }
}
