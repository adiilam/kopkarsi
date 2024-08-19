import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/biodata-page');
                },
                child: menuItem(
                  'Biodata',
                  'assets/icon_biodata.png',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/security-page');
                },
                child: menuItem(
                  'Keamanan',
                  'assets/icon_security.png',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/about-page');
                },
                child: menuItem(
                  'Tentang',
                  'assets/icon_tentang.png',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 130,
                margin: EdgeInsets.only(
                  top: defaultMargin,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-in');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: priceColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        color: backgroundColor,
                      ),
                      const SizedBox(width: 25),
                      Text(
                        'Keluar',
                        style: backgroundTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
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
