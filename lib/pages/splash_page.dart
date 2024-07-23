import 'dart:async';
// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:kopkarsi/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, '/sign-in'));

    super.initState();
  }

  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       body: Center(
//         child: Column(
//           child: Container(
//             width: 88,
//             height: 88,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/image_splash.png'),
//               ),
//             ),
//             SizedBox(
//               height: 27,
//             ),
//             child: Text(
//               'KOPKARSI',
//               style: subtitleTextStyle,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_splash.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            Text(
              'KOPKARSI',
              style: subtitleTextStyle.copyWith(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
