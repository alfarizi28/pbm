import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tryadd extends StatefulWidget {
  const Tryadd({Key? key}) : super(key: key);

  @override
  State<Tryadd> createState() => _TryaddState();
}

class _TryaddState extends State<Tryadd> {
  var nama = '';
  var harga = '';
  var jumlah = '';
  var ukuran = '';

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      // automaticallyImplyLeading: false,
      backgroundColor: const Color(0xffBB5A5A),
      elevation: 0,
      centerTitle: false,
      toolbarHeight: sizeHeight * 0.1,
      title: const Text(
        "Tambah Pesanan",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      leadingWidth: sizeWidth * 0.2,
    );

    final bodyHeight = sizeHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: myAppBar,
        body: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              Container(
                margin: EdgeInsets.only(left: 35, right: 35, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: sizeWidth * 0.2,
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Nama",
                          style: TextStyle(
                            color: Color(0xff3E4957),
                            fontFamily: "Poppins",
                            fontSize: 15,
                          )),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(left: 25),
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Nama Barang'),
                        onChanged: (v) {
                          nama = v;
                        },
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 35, right: 35, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: sizeWidth * 0.2,
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Harga",
                          style: TextStyle(
                            color: Color(0xff3E4957),
                            fontFamily: "Poppins",
                            fontSize: 15,
                          )),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(left: 25),
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Harga Barang'),
                        onChanged: (v) {
                          harga = v;
                        },
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 35, right: 35, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: sizeWidth * 0.2,
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Jumlah",
                          style: TextStyle(
                            color: Color(0xff3E4957),
                            fontFamily: "Poppins",
                            fontSize: 15,
                          )),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(left: 25),
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Jumlah Barang'),
                        onChanged: (v) {
                          jumlah = v;
                        },
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 35, right: 35, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: sizeWidth * 0.2,
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Ukuran",
                          style: TextStyle(
                            color: Color(0xff3E4957),
                            fontFamily: "Poppins",
                            fontSize: 15,
                          )),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(left: 25),
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Ukuran Barang'),
                        onChanged: (v) {
                          ukuran = v;
                        },
                      ),
                    ))
                  ],
                ),
              ),
              InkWell(
                  onTap: () async {
                    var collection =
                        FirebaseFirestore.instance.collection('pesanan');
                    var res = await collection.add({
                      'nama': nama,
                      'harga': harga,
                      'jumlah': jumlah,
                      'ukuran': ukuran,
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 35, right: 35),
                    width: sizeWidth * 10.0,
                    child: Text(
                      "Simpan",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 18,
                          color: Color(0xffEC008D)),
                      textAlign: TextAlign.right,
                    ),
                  ))
            ])));
  }
}
