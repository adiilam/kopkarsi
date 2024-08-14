// import 'package:flutter/widgets.dart';
import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(
              defaultMargin,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/image_profil.png',
                    width: 65,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmad Habibi',
                        style: backgroundTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '7474 - Quality Control',
                        style: backgroundTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-in', (route) => false);
                  },
                  child: Image.asset(
                    'assets/button_exit.png',
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget menuItem(String text, String iconPath) {
      return Container(
        margin: const EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              iconPath,
              width: 24,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: titleTextStyle.copyWith(
                fontSize: 18,
                fontWeight: regular,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.chevron_right,
              color: titleColor,
            ),
          ],
        ),
      );
    }

    // Widget content() {
    //   return Expanded(
    //     child: Container(
    //       width: double.infinity,
    //       margin: const EdgeInsets.only(top: 50),
    //       padding: EdgeInsets.symmetric(
    //         horizontal: defaultMargin,
    //       ),
    //       decoration: BoxDecoration(
    //         color: backgroundColor,
    //         borderRadius: BorderRadius.circular(30),
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         crossAxisAlignment: CrossAxisAlignment.end,
    //         children: [
    //           const SizedBox(
    //             height: 50,
    //           ),
    //           Row(
    //             children: [
    //               Image.asset(
    //                 'assets/icon_biodata.png',
    //                 width: 24,
    //               ),
    //               const SizedBox(
    //                 width: 20,
    //               ),
    //               menuItem(
    //                 'Biodata',
    //               )
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }

    Widget content() {
      return Expanded(
        child: Container(
          width: 390,
          height: 576,
          margin: const EdgeInsets.only(top: 50),
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              menuItem(
                'Biodata',
                'assets/icon_biodata.png',
              ),
              const SizedBox(
                height: 30,
              ),
              menuItem(
                'Keamanan',
                'assets/icon_security.png',
              ),
              const SizedBox(
                height: 30,
              ),
              menuItem(
                'Tentang',
                'assets/icon_tentang.png',
              ),
            ],
          ),
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
