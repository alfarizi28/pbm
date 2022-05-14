import 'package:flutter/material.dart';
import 'package:pbm/Ubah_Alamat.dart';

class Alamat extends StatelessWidget {
  const Alamat({Key? key}) : super(key: key);

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
        "Alamat",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );

    final bodyHeight = sizeHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: myAppBar,
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 15),
                color: Color(0xffF3F1F5),
                height: sizeHeight * 0.2,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                      "Ismail Bin Mail | (+62) 876-9663-2212 Jl. Tadika Mesra No.100, RT.01/RW.02, Kampung Durian Runtuh< kelurahan Durian, Kecamatan Runtuh, Jawa Timur, ID 67552",
                      maxLines: 5,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 17,
                          color: Color(0xff7D7676))),
                )),
            Container(
              color: Color(0xff7D7676),
              height: sizeHeight * 0.001,
            ),
            Container(
                color: Color(0xffF3F1F5),
                height: sizeHeight * 0.2,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                      "Muhammad Al Haffezy | (+62) 812-9463-9213 Jl. Tadika Mesra No.85, RT.03/RW.02, Kampung Durian Runtuh< kelurahan Durian, Kecamatan Runtuh, Jawa Timur, ID 67552",
                      maxLines: 5,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 17,
                          color: Color(0xff7D7676))),
                )),
            Container(
              margin: EdgeInsets.only(top: 15),
              color: Color(0xffF3F1F5),
              child: Row(
                children: [
                  Container(
                      height: sizeHeight * 0.05,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return UbahAlamat();
                          })));
                        },
                        child: const Text("Tambah alamat baru",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 17,
                                color: Color(0xff7D7676))),
                      )),
                  SizedBox(
                    width: sizeWidth * 0.48,
                  ),
                  const Text("+",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 30,
                        color: Color(0xff7D7676),
                      )),
                ],
              ),
            )
          ],
        ));
  }
}
