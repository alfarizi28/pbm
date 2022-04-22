// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pbm/Login.dart';
import 'package:pbm/Register.dart';

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: mediaQueryHeight * 0.1,
            color: Color(0x00ffffff),
          ),
          Container(
            width: mediaQueryWidth * 10,
            height: mediaQueryHeight * 0.1,
            child: const Text("Selamat Datang",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: mediaQueryHeight * 0.1,
            child: const Text(
                "G 4 N Menyediakan aneka produk fashion untuk membantu menciptakan style terbaik!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: mediaQueryHeight * 0.35,
            child: const Image(
                fit: BoxFit.fitHeight, image: AssetImage("images/logo.png")),
          ),
          Container(
            height: mediaQueryHeight * 0.04,
            // color: Colors.pink,
            child: const Text("Apakah Anda sudah memiliki akun?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            width: mediaQueryWidth * 0.5,
            height: mediaQueryHeight * 0.06,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffF3F1F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
              child: const Text(
                "Log in",
                style: TextStyle(
                  color: Color(0xffBB5A5A),
                ),
              ),
            ),
          ),
          Container(
            height: mediaQueryHeight * 0.04,
            color: Color(0x00ffffff),
          ),
          SizedBox(
            height: mediaQueryHeight * 0.05,
            // color: Colors.pink,
            child: const Text("Apakah Anda sudah memiliki akun?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            width: mediaQueryWidth * 0.5,
            height: mediaQueryHeight * 0.06,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffBB5A5A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Register();
                }));
              },
              child: const Text(
                "Registrasi",
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
