import 'package:kopkarsi/theme.dart';
import 'package:flutter/material.dart';

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

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
                  'Biodata',
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

    Widget content() {
      return Expanded(
        child: Container(
          width: 390,
          height: 576,
          margin: const EdgeInsets.only(top: 50),
          padding: const EdgeInsets.only(
            top: 80,
            left: 30,
            right: 10,
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  'Nama',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: Text(
                  'Ahmad Habibi',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'NPK',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: Text(
                  '7474',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Department',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: Text(
                  'Produksi',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Divisi',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: Text(
                  'Quality Control',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'TMK',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: Text(
                  '6 September 2015',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'TGK',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                trailing: Text(
                  '12 Januari 2016',
                  style: titleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
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
