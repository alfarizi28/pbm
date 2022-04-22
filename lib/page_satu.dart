import 'package:flutter/material.dart';
import 'package:pbm/Page_dua.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: mediaQueryWidth * 10,
            height: mediaQueryHeight * 0.75,
            color: Colors.white,
            child: const Image(
                fit: BoxFit.cover, image: AssetImage("images/image 1.png")),
          ),
          Container(
            height: mediaQueryHeight * 0.01,
            color: Color(0x00ffffff),
          ),
          Container(
            height: mediaQueryHeight * 0.05,
            // color: Colors.amber,
            child: const Text(
              "G 4 N",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: mediaQueryHeight * 0.01,
            color: Color(0x00ffffff),
          ),
          Container(
            height: mediaQueryHeight * 0.04,
            // color: Colors.green,
            child: const Text(
              "Make Your Own Style",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: mediaQueryHeight * 0.05,
            // color: Colors.red,
            child: const Text(
              "Ciptakan look terbaik dengan nuansa 'Korean Look' sesuai style favoritmu!",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey),
            ),
          ),
          Container(
            height: mediaQueryHeight * 0.01,
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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PageDua();
                }));
              },
              child: const Text(
                "Mulai Sekarang!",
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
