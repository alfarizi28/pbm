import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pbm/Keranjang.dart';
import 'package:pbm/chat.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({Key? key}) : super(key: key);

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
late DateTime _dateTime;

  @override
Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xffBB5A5A),
      elevation: 0,
      centerTitle: false,
      toolbarHeight: sizeHeight * 0.1,
      title: const Text(
        "Notifikasi",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      actions: [
        Container(
          height: sizeHeight * 0.1,
          width: sizeWidth * 0.2,
          child: IconButton(
            onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const PageChat();
                    })));},
            icon: const Icon(
              Icons.chat_bubble_outline,
              size: 36,
            ),
            color: Colors.white,
          ),
        ),
        Container(
          height: sizeHeight * 0.1,
          width: sizeWidth * 0.2,
          child: IconButton(
            onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const PageKeranjang();
                    })));},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 36,
            ),
            color: Colors.white,
          ),
        ),
      ],
      leadingWidth: sizeWidth * 0.2,
    );

    final bodyHeight = sizeHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(appBar: myAppBar, body: Column(
      children: [
        Container(
          // color: Colors.blue,
          height: sizeHeight * 0.06,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,top: 10),
                // color: Colors.amber,
                height: sizeHeight *0.1,
                width: sizeWidth *0.5,
                child: Text(
                  'Status Pemesanan',textAlign: TextAlign.left,style: TextStyle(color: Color(0xffC06468),fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50),
                // color: Colors.amber,
                      child: TextButton(
                        onPressed: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2001),
                                  lastDate: DateTime(2222))
                              .then((date) {
                            setState(() {
                              _dateTime = date!;
                            });
                          });
                        },
                        child: Text(
                          "Pilih Tanggal",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: Color(0xffC06468),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    )
            ],
          ),
        ),
        Container(
          color: Color(0xffF3F1F5),
          height: sizeHeight * 0.1,
          child: Row(
            children: [
              Container(
                width: sizeWidth * 0.23,
                child: ClipRRect(
                          child: Image(
                          image: AssetImage("images/produk1.png"),
                          width: sizeWidth * 0.3,
                          // height: sizeHeight * 0.3,
                          ),
                        ),
              ),
              Container(
                // color: Colors.black,
                width: sizeWidth * 0.4,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:10),
                      // color: Colors.blue,
                      width: sizeWidth * 0.3,
                      child: Text("Paket dikirim",textAlign: TextAlign.left,style: TextStyle(fontSize: 16, color: Color(0xffBB5A5A), fontWeight: FontWeight.bold ),),
                    ),
                    Container(
                      // color: Colors.blue,
                      width: sizeWidth * 0.3,
                      child: Text("Korea Cardigan",textAlign: TextAlign.left,style: TextStyle(fontSize: 14, color: Color(0xffBB5A5A)),),
                    ),
                    Container(
                      // color: Colors.blue,
                      width: sizeWidth * 0.3,
                      child: Text("24-10-2022",textAlign: TextAlign.left,style: TextStyle(fontSize: 14, color: Color(0xffBB5A5A)),),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
        Container(
          height: sizeHeight * 0.001,
          color: Colors.black,
        ),
        Container(
          color: Color(0xffF3F1F5),
          height: sizeHeight * 0.1,
          child: Row(
            children: [
              Container(
                width: sizeWidth * 0.23,
                child: ClipRRect(
                          child: Image(
                          image: AssetImage("images/produk2.png"),
                          width: sizeWidth * 0.3,
                          // height: sizeHeight * 0.3,
                          ),
                        ),
              ),
              Container(
                // color: Colors.black,
                width: sizeWidth * 0.4,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:10),
                      // color: Colors.blue,
                      width: sizeWidth * 0.3,
                      child: Text("Paket diterima",textAlign: TextAlign.left,style: TextStyle(fontSize: 16, color: Color(0xffBB5A5A), fontWeight: FontWeight.bold ),),
                    ),
                    Container(
                      // color: Colors.blue,
                      width: sizeWidth * 0.3,
                      child: Text("Kemeja Formal",textAlign: TextAlign.left,style: TextStyle(fontSize: 14, color: Color(0xffBB5A5A)),),
                    ),
                    Container(
                      // color: Colors.blue,
                      width: sizeWidth * 0.3,
                      child: Text("21-10-2022",textAlign: TextAlign.left,style: TextStyle(fontSize: 14, color: Color(0xffBB5A5A)),),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
