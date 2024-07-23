import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget cartButton(){
      return FloatingActionButton(onPressed: (){},
      backgroundColor: iconColor,
      child: Image.asset('assets/icon_cart.png',width: 20,),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30),),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
            BottomNavigationBarItem(
              icon: Image.asset(
              'assets/icon_home.png', 
              width: 21,
            ),
            label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
              'assets/icon_simjam.png', 
              width: 20,
            ),
            label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
              'assets/icon_riwayat.png', 
              width: 21,
            ),
            label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
              'assets/icon_profile.png', 
              width: 21,
            ),
            label: '',
            ),
          ],
          ),
        ),
      );
    }


    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: const Center(
        child: Text('Main Page'),
        ),
    );
  }
}