import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            onPressed: () {},
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
            onPressed: () {},
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
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,top: 25),
                // color: Colors.amber,
                height: sizeHeight *0.1,
                width: sizeWidth *0.5,
                child: Text(
                  'Status Pemesanan',textAlign: TextAlign.left,style: TextStyle(color: Colors.red,fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25,left: 50),
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
                              color: Colors.grey,
                              fontSize: 15),
                        ),
                      ),
                    )
            ],
          ),
        )
      ],
    ));
  }
}
