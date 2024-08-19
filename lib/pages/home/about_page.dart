import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                // Padding(
                //   padding: EdgeInsets.only(
                //     top: 30,
                //   ),
                // ),
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
                  'Tentang',
                  style: backgroundTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                // SizedBox(
                //   width: 150,
                // ),
                // Image.asset(
                //   'assets/image_profil.png',
                //   width: 50,
                // ),
              ],
            ),
          ),
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
          child: Container(
            margin: const EdgeInsets.only(
              left: 10,
              top: 50,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image_splash.png',
                  width: 51,
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: Text(
                    '   Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et eleifend purus, at fermentum odio. Pellentesque accumsantortor sem, nec ullamcorper ex malesuada vitae. Duis ut nulla vitae turpis condimentum semper ac a magna. Integer vel sapien nibh. Nam viverra metus et interdum porttitor. Ut semper porttitor euismod. Aliquam at ex purus. Aenean eu volutpat mi, ut placerat odio. Mauris dui nisl, sodales vitae elit sed, rutrum venenatis ipsum. Ut aliquam facilisis finibus. Quisque venenatis lacus a fermentum bibendum. Integer viverra consectetur mi, vitae commodo erat bibendum ut. Integer molestie enim urna, id aliquet leo tempus eu.',
                    style: titleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
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
