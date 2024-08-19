import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.pop(context);
                //   },
                // ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  'Keamanan',
                  style: backgroundTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
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
                  // Navigator.pushNamed(context, '/biodata-page');
                },
                child: menuItem(
                  'Email',
                  'assets/icon_email.png',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/biodata-page');
                },
                child: menuItem(
                  'Ganti Password',
                  'assets/icon_key.png',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/about-page');
                },
                child: menuItem(
                  'Ganti Pin',
                  'assets/icon_pin.png',
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
          const Spacer(),
        ],
      ),
    );
  }
}
