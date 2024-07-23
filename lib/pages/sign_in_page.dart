import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 51,
              height: 51,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_splash.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Masuk',
              style: primaryTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Lorem epsum is simply dummy text',
              style: subtitleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 35),
        height: 40,
        decoration: BoxDecoration(
          color: backgroundColor2,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: TextFormField(
                style: titleTextStyle,
                decoration: InputDecoration.collapsed(
                  hintText: 'Alamat Email',
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        height: 40,
        decoration: BoxDecoration(
          color: backgroundColor2,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: TextFormField(
                obscureText: true,
                style: titleTextStyle,
                decoration: InputDecoration.collapsed(
                  hintText: 'Kata Sandi',
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signInButton() {
      return Container(
        height: 40,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 22),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            child: Text(
              'Masuk',
              style: backgroundTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            )),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'don\'t have any account? ',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passwordInput(),
              signInButton(),
              const Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
