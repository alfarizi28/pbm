import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: mediaQueryWidth * 10,
            height: mediaQueryHeight * 0.5,
            child: const Image(
                fit: BoxFit.cover, image: AssetImage("images/Login.png")),
          ),
        ],
      ),
    );
  }
}
