import 'package:flutter/material.dart';
import 'package:pbm/Alamat.dart';
import 'package:pbm/Ulasan.dart';
import 'package:pbm/chat.dart';

import 'detailprofil.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      backgroundColor: const Color(0xffF3F1F5),
      elevation: 0,
      centerTitle: false,
      toolbarHeight: sizeHeight * 0.12,
      title: const Text(
        "Hallo, Mail! mail2016@gmail.com 081355966745",
        textAlign: TextAlign.left,
        maxLines: 3,
        style: TextStyle(fontSize: 12, color: Colors.black),
      ),
      leading: Center(
        child: SizedBox(
          width: sizeWidth * 0.15,
          height: sizeHeight * 0.15,
          child: const CircleAvatar(
            backgroundImage: AssetImage("images/mail.jpg"),
          ),
        ),
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
            color: Color(0xffBB5A5A),
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
            color: Color(0xffBB5A5A),
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
        body: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              SizedBox(
                  height: sizeHeight * 0.015,
                  child: Container(
                    color: Color(0xffffffff),
                  )),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 20),
                child: const Text(
                  "Akun",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xffBB5A5A)),
                ),
              ),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 35,
                      color: Color(0xffBB5A5A),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    // color: Colors.red,
                                    height: sizeHeight * 0.05,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return editProfile();
                                        })));
                                      },
                                      child: const Text("Ubah Profil",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              color: Color(0xff8B8B8B))),
                                    )),
                                SizedBox(
                                  width: sizeWidth * 0.367,
                                ),
                                const Text("->",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 30,
                                      color: Color(0xffBB5A5A),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: sizeWidth * 0.65,
                            height: 1,
                            child: Container(
                              color: Color(0xffC8C8C8),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_city,
                      size: 35,
                      color: Color(0xffBB5A5A),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    height: sizeHeight * 0.05,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return const Alamat();
                                        })));
                                      },
                                      child: const Text("Alamat",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              color: Color(0xff8B8B8B))),
                                    )),
                                SizedBox(
                                  width: sizeWidth * 0.43,
                                ),
                                const Text("->",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 30,
                                      color: Color(0xffBB5A5A),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: sizeWidth * 0.65,
                            height: 1,
                            child: Container(
                              color: Color(0xffC8C8C8),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Pesanan",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xffBB5A5A)),
                ),
              ),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    const Icon(
                      Icons.description_outlined,
                      size: 35,
                      color: Color(0xffBB5A5A),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    height: sizeHeight * 0.05,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text("Pesanan",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              color: Color(0xff8B8B8B))),
                                    )),
                                SizedBox(
                                  width: sizeWidth * 0.41,
                                ),
                                const Text("->",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 30,
                                      color: Color(0xffBB5A5A),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: sizeWidth * 0.65,
                            height: 1,
                            child: Container(
                              color: Color(0xffC8C8C8),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    const Icon(
                      Icons.square_sharp,
                      size: 35,
                      color: Color(0xffBB5A5A),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    height: sizeHeight * 0.05,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text("Dikemas",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              color: Color(0xff8B8B8B))),
                                    )),
                                SizedBox(
                                  width: sizeWidth * 0.4,
                                ),
                                const Text("->",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 30,
                                      color: Color(0xffBB5A5A),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: sizeWidth * 0.65,
                            height: 1,
                            child: Container(
                              color: Color(0xffC8C8C8),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    const Icon(
                      Icons.send,
                      size: 35,
                      color: Color(0xffBB5A5A),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    height: sizeHeight * 0.05,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text("Dikirim",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              color: Color(0xff8B8B8B))),
                                    )),
                                SizedBox(
                                  width: sizeWidth * 0.43,
                                ),
                                const Text("->",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 30,
                                      color: Color(0xffBB5A5A),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: sizeWidth * 0.65,
                            height: 1,
                            child: Container(
                              color: Color(0xffC8C8C8),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star_rate,
                      size: 35,
                      color: Color(0xffBB5A5A),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    height: sizeHeight * 0.05,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return Ulasan();
                                        })));
                                      },
                                      child: const Text("Beri Penilaian",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              color: Color(0xff8B8B8B))),
                                    )),
                                SizedBox(
                                  width: sizeWidth * 0.3,
                                ),
                                const Text("->",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 30,
                                      color: Color(0xffBB5A5A),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: sizeWidth * 0.65,
                            height: 1,
                            child: Container(
                              color: Color(0xffC8C8C8),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 25),
                child: Text(
                  "Lainnya",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xffBB5A5A)),
                ),
              ),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.payment_outlined,
                      size: 35,
                      color: Color(0xffBB5A5A),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    height: sizeHeight * 0.05,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text("Cara Pembayaran",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              color: Color(0xff8B8B8B))),
                                    )),
                                SizedBox(
                                  width: sizeWidth * 0.22,
                                ),
                                Text("->",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 30,
                                      color: Color(0xffBB5A5A),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: sizeWidth * 0.65,
                            height: 1,
                            child: Container(
                              color: Color(0xffC8C8C8),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_rate_outlined,
                      size: 35,
                      color: Color(0xffBB5A5A),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    height: sizeHeight * 0.05,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text("Nilai Kami",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              color: Color(0xff8B8B8B))),
                                    )),
                                SizedBox(
                                  width: sizeWidth * 0.35,
                                ),
                                Text("->",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 30,
                                      color: Color(0xffBB5A5A),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: sizeWidth * 0.65,
                            height: 1,
                            child: Container(
                              color: Color(0xffC8C8C8),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeWidth * 0.8,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    const Icon(
                      Icons.logout_outlined,
                      size: 35,
                      color: Color(0xffBB5A5A),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    height: sizeHeight * 0.05,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text("Keluar",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              color: Color(0xff8B8B8B))),
                                    )),
                                SizedBox(
                                  width: sizeWidth * 0.41,
                                ),
                                const Text("->",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 30,
                                      color: Color(0xffBB5A5A),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: sizeWidth * 0.65,
                            height: 1,
                            child: Container(
                              color: Color(0xffC8C8C8),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeHeight * 0.15,
              )
            ])));
  }
}
