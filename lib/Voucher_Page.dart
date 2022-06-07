import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pbm/TryAdd.dart';

class Voucher extends StatefulWidget {
  const Voucher({Key? key}) : super(key: key);

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  var list_item = [];

  void initState() {
    super.initState();
  }

  getData() {
    var colPesanan = FirebaseFirestore.instance.collection('pesanan');
    colPesanan.get().then((value) {
      setState(() {
        list_item = value.docs.map((e) {
          return {
            'nama': e['nama'],
            'harga': e['harga'],
            'jumlah': e['jumlah'],
            'ukuran': e['ukuran']
          };
        }).toList();
      });
    });
  }

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
        "Pesanan",
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
    return Scaffold(
        appBar: myAppBar,
        body: Container(
          color: Color(0xFFe1e1e1),
          child: Column(
            children: [
              Container(
                  width: sizeWidth * 0.9,
                  // color: Colors.amber,
                  margin: EdgeInsets.only(
                    top: 35,
                  ),
                  child: Text(
                    "Daftar Pesanan",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )),
              Expanded(
                  child: ListView.builder(
                      itemCount: list_item.length,
                      itemBuilder: (_, int index) {
                        var item = list_item[index];
                        return ListTile(
                          title: Text(item['nama']),
                          subtitle: Row(
                            children: [
                              Text(item['harga']),
                              Text(item['jumlah']),
                              Text(item['ukuran']),
                            ],
                          ),
                        );
                      })),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: sizeWidth * 0.4,
                      margin: EdgeInsets.only(left: 5, bottom: 30),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffBB5A5A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          getData();
                        },
                        child: const Text(
                          "Refresh Data",
                          style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      // child: ElevatedButton(
                      //     onPressed: () {
                      //       getData();
                      //     },
                      //     child: Text("Refresh Data")),
                    ),
                    Container(
                      width: sizeWidth * 0.4,
                      margin: EdgeInsets.only(left: 70, bottom: 30),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffBB5A5A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Tryadd();
                          }));
                        },
                        child: const Text(
                          "Tambah Pesanan",
                          style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      // child: ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.push(context,
                      //           MaterialPageRoute(builder: ((context) {
                      //         return Tryadd();
                      //       })));
                      //     },
                      //     child: Text("Tambah Pesanan")),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
