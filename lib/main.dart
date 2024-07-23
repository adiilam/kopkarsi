// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:kopkarsi/pages/sign_in_page.dart';
import 'package:kopkarsi/pages/sign_up_page.dart';
import 'package:kopkarsi/pages/splash_page.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
      },
      // home: SplashPage(),
    );
  }
}
