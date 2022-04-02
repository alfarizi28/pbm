// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 400,
            height: 200,
            // color: Colors.pink,
            child: const Text("Selamat Datang",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    height: 6,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            width: 400,
            height: 50,
            // color: Colors.pink,
            child: const Text(
                "G 4 N Menyediakan aneka produk fashion untuk membantu menciptakan style terbaik!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            width: 400,
            height: 250,
            // color: Colors.white,
            child: Image(
                fit: BoxFit.fitHeight, image: AssetImage("images/logo.png")),
          ),
          SizedBox(
            width: 400,
            height: 20,
            // color: Colors.pink,
            child: const Text("Apakah Anda sudah memiliki akun?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    // height: 6,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            width: 200,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffF3F1F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Log in",
                style: TextStyle(
                  color: Color(0xffBB5A5A),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 400,
            height: 50,
            // color: Colors.pink,
            child: const Text("Apakah Anda sudah memiliki akun?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    height: 3,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            width: 200,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffBB5A5A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
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
