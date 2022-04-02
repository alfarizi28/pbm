import 'package:flutter/material.dart';
import 'package:pbm/Page_dua.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 395,
            height: 560,
            color: Colors.white,
            child: const Image(
                fit: BoxFit.cover, image: AssetImage("images/image 1.png")),
          ),
          const SizedBox(
            width: 200,
            height: 60,
            // color: Colors.white,
            child: Text(
              "G 4 N",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                  height: 1.5,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            width: 300,
            height: 35,
            // color: Colors.green,
            child: Text(
              "Make Your Own Style",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 300,
            height: 50,
            // color: Colors.red,
            child: Text(
              "Ciptakan look terbaik dengan nuansa 'Korean Look' sesuai style favoritmu!",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey),
            ),
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
