import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
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
              'Registrasi',
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

    Widget npkInput() {
      return Container(
        margin: const EdgeInsets.only(top: 25),
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
                  hintText: 'NPK',
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
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
                  hintText: 'Nama Lengkap',
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
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

    Widget phoneInput() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
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
                  hintText: 'Nomor Handphone',
                  hintStyle: subtitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget deptDropdown() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
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
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration.collapsed(
                  hintText: 'Pilih Department',
                  hintStyle: subtitleTextStyle,
                ),
                items: [
                  DropdownMenuItem<String>(
                    value: 'Prod',
                    child: Text(
                      'Produksi',
                      style: titleTextStyle,
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'QA QC',
                    child: Text(
                      'QA QC',
                      style: titleTextStyle,
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'PPIC',
                    child: Text(
                      'PPIC',
                      style: titleTextStyle,
                    ),
                  ),
                ],
                onChanged: (value) {
                  // Handle value change
                },
              ),
            ),
          ],
        ),
      );
    }

    Widget sectionDropdown() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
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
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration.collapsed(
                  hintText: 'Pilih Section',
                  hintStyle: subtitleTextStyle,
                ),
                items: [
                  DropdownMenuItem<String>(
                    value: 'PROD',
                    child: Text(
                      'Molding',
                      style: titleTextStyle,
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'QA QC',
                    child: Text(
                      'QC',
                      style: titleTextStyle,
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'PPIC',
                    child: Text(
                      'Finish Good',
                      style: titleTextStyle,
                    ),
                  ),
                ],
                onChanged: (value) {
                  // Handle value change
                },
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
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
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text(
                'Registrasi',
                style: backgroundTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
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
              'Sudah memiliki akun? ',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                'Sign in',
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
              npkInput(),
              nameInput(),
              emailInput(),
              phoneInput(),
              deptDropdown(),
              sectionDropdown(),
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
