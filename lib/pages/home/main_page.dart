import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';
import 'package:kopkarsi/pages/home/home_page.dart';
import 'package:kopkarsi/pages/home/simjam_page.dart';
import 'package:kopkarsi/pages/home/history_page.dart';
import 'package:kopkarsi/pages/home/profile_page.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: iconColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: regular,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: regular,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Transform.translate(
                  offset: const Offset(-8, 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                        ),
                        child: Image.asset(
                          'assets/icon_home.png',
                          width: 20,
                          color: currentIndex == 0
                              ? iconColor
                              : const Color(0xff222522),
                        ),
                      ),
                      Text(
                        'Beranda',
                        style: TextStyle(
                          fontSize: 12,
                          color: currentIndex == 0
                              ? iconColor
                              : const Color(0xff222522),
                        ),
                      ),
                    ],
                  ),
                ),
                label: '',
              ),
              // BottomNavigationBarItem(
              //   icon: Transform.translate(
              //     offset: const Offset(-15, 5), // Geser ke kiri
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Container(
              //           margin: const EdgeInsets.only(
              //             top: 20,
              //             bottom: 10,
              //           ),
              //           child: Image.asset(
              //             'assets/icon_simjam.png',
              //             width: 20,
              //             color: currentIndex == 1
              //                 ? iconColor
              //                 : const Color(0xff222522),
              //           ),
              //         ),
              //         Text(
              //           'SimJam',
              //           style: TextStyle(
              //             fontSize: 12,
              //             color: currentIndex == 1
              //                 ? iconColor
              //                 : const Color(0xff222522),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              //   label: '',
              // ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      barrierColor: Colors.black.withOpacity(0.5),
                      builder: (BuildContext context) {
                        return Container(
                          height: 120,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.save),
                                title: const Text('Simpan'),
                                onTap: () {
                                  // Action untuk Simpan
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                leading: const Icon(Icons.attach_money),
                                title: const Text('Pinjam'),
                                onTap: () {
                                  // Action untuk Pinjam
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                    // Text(
                    //   'SimJam',
                    //   style: TextStyle(
                    //     fontSize: 12,
                    //     color: currentIndex == 1
                    //         ? iconColor
                    //         : const Color(0xff222522),
                    //   ),
                    // );
                  },
                  child: const Icon(Icons.account_balance_wallet),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Transform.translate(
                  offset: const Offset(15, 5), // Geser ke kiri
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                        ),
                        child: Image.asset(
                          'assets/icon_riwayat.png',
                          width: 20,
                          color: currentIndex == 2
                              ? iconColor
                              : const Color(0xff222522),
                        ),
                      ),
                      Text(
                        'Riwayat',
                        style: TextStyle(
                          fontSize: 12,
                          color: currentIndex == 2
                              ? iconColor
                              : const Color(0xff222522),
                        ),
                      ),
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Transform.translate(
                  offset: const Offset(5, 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                        ),
                        child: Image.asset(
                          'assets/icon_profile.png',
                          width: 15,
                          color: currentIndex == 3
                              ? primaryColor
                              : const Color(0xff222522),
                        ),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 12,
                          color: currentIndex == 3
                              ? primaryColor
                              : const Color(0xff222522),
                        ),
                      ),
                    ],
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        // break;
        case 1:
          return const SimjamPage();
        // break;
        case 2:
          return const HistoryPage();
        // break;
        case 3:
          return const ProfilePage();
        // break;
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
