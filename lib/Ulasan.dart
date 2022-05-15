import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Ulasan extends StatefulWidget {
  const Ulasan({Key? key}) : super(key: key);

  @override
  State<Ulasan> createState() => _UlasanState();
}

class _UlasanState extends State<Ulasan> {
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      backgroundColor: const Color(0xffB55F5E),
      elevation: 0,
      centerTitle: false,
      toolbarHeight: sizeHeight * 0.12,
      title: const Text(
        "Beri Rating",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );

    final bodyHeight = sizeHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: myAppBar,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            color: Color(0xffF3F1F5),
            width: sizeWidth * 10,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: const Text(
                    "Beri Rating Untuk Pelayanan Kami",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        color: Color(0xff7D7D7D)),
                  ),
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: const Text(
                    "Tidak Puas                        Sangat Puas",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        color: Color(0xff7D7D7D)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: sizeWidth * 10,
            margin: const EdgeInsets.only(top: 20, left: 10),
            child: const Text(
              "Beri Komentar",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff7D7676)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: sizeWidth * 0.9,
            height: sizeHeight * 0.2,
            color: Color(0xffF3F1F5),
          ),
          Container()
        ],
      )),
    );
  }
}
