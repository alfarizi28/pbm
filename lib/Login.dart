import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: mediaQueryHeight * 0.35,
            width: mediaQueryWidth * 0.35,
            decoration: const BoxDecoration(
                color: Color(0xffBB5A5A), shape: BoxShape.circle),
            child: const Center(
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: mediaQueryWidth * 0.8,
              height: mediaQueryHeight * 0.03,
              // color: Colors.amber,
              child: const Text(
                "LOG IN",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xffBB5A5A),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: mediaQueryWidth * 0.8,
            height: mediaQueryHeight * 0.06,
            child: const Text(
                "Selamat datang kembali, silahkan isi username dan password dengan benar",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                )),
          ),
          Container(
            width: mediaQueryWidth * 0.8,
            height: mediaQueryHeight * 0.03,
            child: const Text("Email",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                )),
          ),
          Container(
            width: mediaQueryWidth * 0.8,
            height: mediaQueryHeight * 0.06,
            // color: Colors.amber,
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Masukan Email",
                  prefixIcon: Icon(
                    Icons.person,
                    size: 28,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          Container(
            height: mediaQueryHeight * 0.02,
            color: Color(0x00ffffff),
          ),
          Container(
            width: mediaQueryWidth * 0.8,
            height: mediaQueryHeight * 0.03,
            child: const Text("Password",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                )),
          ),
          Container(
            width: mediaQueryWidth * 0.8,
            height: mediaQueryHeight * 0.06,
            // color: Colors.amber,
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 28,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          Container(
            height: mediaQueryHeight * 0.05,
            color: Color(0x00ffffff),
          ),
          SizedBox(
            width: mediaQueryWidth * 0.5,
            height: mediaQueryHeight * 0.05,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffBB5A5A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "LOG IN",
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
