import 'package:flutter/material.dart';
import 'package:kopkarsi/pages/splash_page.dart';
import 'package:kopkarsi/pages/sign_in_page.dart';
import 'package:kopkarsi/pages/sign_up_page.dart';
import 'package:kopkarsi/pages/home/shop_page.dart';
import 'package:kopkarsi/pages/home/main_page.dart';
import 'package:kopkarsi/pages/home/about_page.dart';
import 'package:kopkarsi/pages/home/pinjam_page.dart';
import 'package:kopkarsi/pages/home/simpan_page.dart';
import 'package:kopkarsi/pages/home/biodata_page.dart';
import 'package:kopkarsi/pages/home/security_page.dart';

// import 'dart:js';

// import 'package:google_fonts/google_fonts.dart';
// import 'theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const MainPage(),
        '/about-page': (context) => const AboutPage(),
        '/biodata-page': (context) => const BiodataPage(),
        '/security-page': (context) => const SecurityPage(),
        '/simpan-page': (context) => const SimpanPage(),
        '/pinjam-page': (context) => const PinjamPage(),
        '/shop-page': (context) => ShopPage(),
      },
      // home: SplashPage(),
    );
  }
}
