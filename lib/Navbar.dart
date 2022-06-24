import 'package:flutter/material.dart';
import 'package:pbm/Home_Page.dart';
import 'package:pbm/Notifikasi_Page.dart';
import 'package:pbm/Produk_Page.dart';
import 'package:pbm/Profil_Page.dart';
import 'package:pbm/Voucher_Page.dart';

class BtmNavbar extends StatefulWidget {
  const BtmNavbar({Key? key}) : super(key: key);

  @override
  State<BtmNavbar> createState() => BtmNavbarState();
}

class BtmNavbarState extends State<BtmNavbar> {
  int currentIndex = 0;
  final List<Widget> body = [
    const HomePage(),
    const Produk(),
    const Voucher(),
    const Notifikasi(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Color(0xffBB5A5A),
                size: 30,
              ),
              label: 'Home',
              activeIcon: Icon(Icons.home, color: Color(0xffBB5A5A), size: 30)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.crop_square,
                color: Color(0xffBB5A5A),
                size: 30,
              ),
              label: 'Produk',
              activeIcon:
                  Icon(Icons.square, color: Color(0xffBB5A5A), size: 30)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.description_outlined,
                color: Color(0xffBB5A5A),
                size: 30,
              ),
              label: 'Voucher',
              activeIcon:
                  Icon(Icons.description, color: Color(0xffBB5A5A), size: 30)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_add_outlined,
                color: Color(0xffBB5A5A),
                size: 30,
              ),
              label: 'Notifikasi',
              activeIcon: Icon(Icons.notifications,
                  color: Color(0xffBB5A5A), size: 30)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Color(0xffBB5A5A),
                size: 30,
              ),
              label: 'Profil',
              activeIcon: Icon(Icons.account_circle,
                  color: Color(0xffBB5A5A), size: 30))
        ],
        selectedItemColor: Color(0xffBB5A5A),
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
