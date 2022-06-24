import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pbm/Keranjang.dart';
import 'package:pbm/chat.dart';

class Voucher extends StatefulWidget {
  const Voucher({Key? key}) : super(key: key);

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> with SingleTickerProviderStateMixin {
  
  late TabController _tabController;
  var list_item1 = [];
  var list_item2 = [];
  var list_item3 = [];
  
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
     getDataVoucher1();
     getDataVoucher2();
     getDataVoucher3();
  }

  getDataVoucher1() {
    var colVoucher1= FirebaseFirestore.instance.collection('voucher1');
    colVoucher1.get().then((value) {
      setState(() {
        list_item1 = value.docs.map((e) {
          return {
            'nama': e['nama'],
            'tagline': e['tagline'],
            'gambar': e['gambar']
          };
        }).toList();
      });
    });
  }
  getDataVoucher2() {
    var colVoucher2= FirebaseFirestore.instance.collection('voucher2');
    colVoucher2.get().then((value) {
      setState(() {
        list_item2 = value.docs.map((e) {
          return {
            'nama': e['nama'],
            'tagline': e['tagline'],
            'gambar': e['gambar']
          };
        }).toList();
      });
    });
  }
  getDataVoucher3() {
    var colVoucher3= FirebaseFirestore.instance.collection('voucher3');
    colVoucher3.get().then((value) {
      setState(() {
        list_item3 = value.docs.map((e) {
          return {
            'nama': e['nama'],
            'tagline': e['tagline'],
            'gambar': e['gambar']
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
        "Voucher",
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
    return MaterialApp(
        home: DefaultTabController(
          length: 3, 
          child: Scaffold(
            appBar: myAppBar,
            body: Container(
              child: Column(
                children: [
                  TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.red,
                    tabs: [
                      Tab( text: 'Gratis Ongkir',),
                      Tab(text: 'Cashback',),
                      Tab(text: 'Potongan Harga',),
                    ],
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Expanded(child: ListView.builder(
                            itemCount: list_item1.length,
                            itemBuilder: (_, int index) {
                              var item = list_item1[index];
                              return Container(
                                 padding: EdgeInsets.only(
                                 top: 15,
                                 left: sizeWidth * 0.05,
                                 right: sizeWidth * 0.05),
                                 child: Container(
                                  width: sizeWidth * 0.9,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: <Widget> [
                                          ClipRRect(
                                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                            child: Image.asset( "images/${item['gambar']}.png",
                                            height: sizeHeight * 0.15,
                                            fit: BoxFit.cover),
                                          ),
                                          ListTile(
                                            title: Text(
                                            item['nama'],
                                            style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                            item['tagline'],
                                            style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  color: Color(0xffEC008D)),
                                            ),
                                            trailing: ElevatedButton(
                                                onPressed: () {}, child: Text("Pakai")),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                 ),
                              );
                            }
                          )),
                          Expanded(child: ListView.builder(
                            itemCount: list_item2.length,
                            itemBuilder: (_, int index) {
                              var item = list_item2[index];
                              return Container(
                                 padding: EdgeInsets.only(
                                 top: 15,
                                 left: sizeWidth * 0.05,
                                 right: sizeWidth * 0.05),
                                 child: Container(
                                  width: sizeWidth * 0.9,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: <Widget> [
                                          ClipRRect(
                                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                            child: Image.asset( "images/${item['gambar']}.png",
                                            height: sizeHeight * 0.15,
                                            fit: BoxFit.cover),
                                          ),
                                          ListTile(
                                            title: Text(
                                            item['nama'],
                                            style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                            item['tagline'],
                                            style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  color: Color(0xffEC008D)),
                                            ),
                                            trailing: ElevatedButton(
                                                onPressed: () {}, child: Text("Pakai")),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                 ),
                              );
                            }
                          )),
                          Expanded(child: ListView.builder(
                            itemCount: list_item3.length,
                            itemBuilder: (_, int index) {
                              var item = list_item3[index];
                              return Container(
                                 padding: EdgeInsets.only(
                                 top: 15,
                                 left: sizeWidth * 0.05,
                                 right: sizeWidth * 0.05),
                                 child: Container(
                                  width: sizeWidth * 0.9,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: <Widget> [
                                          ClipRRect(
                                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                            child: Image.asset( "images/${item['gambar']}.png",
                                            height: sizeHeight * 0.15,
                                            fit: BoxFit.cover),
                                          ),
                                          ListTile(
                                            title: Text(
                                            item['nama'],
                                            style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                            item['tagline'],
                                            style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  color: Color(0xffEC008D)),
                                            ),
                                            trailing: ElevatedButton(
                                                onPressed: () {}, child: Text("Pakai")),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                 ),
                              );
                            }
                          ))
                        ]))
                ],
              ),
            ),
          )),
        );
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}


