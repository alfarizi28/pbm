import 'package:flutter/material.dart';
import 'package:pbm/Keranjang.dart';
import 'package:pbm/chat.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      backgroundColor: const Color(0xffF3F1F5),
      elevation: 0,
      centerTitle: false,
      toolbarHeight: sizeHeight * 0.08,
      title: const Text(
        "Hallo, Mail! mail2016@gmail.com",
        textAlign: TextAlign.left,
        maxLines: 2,
        style: TextStyle(fontSize: 12, color: Colors.black),
      ),
      leading: Center(
        child: SizedBox(
          width: sizeWidth * 0.1,
          height: sizeHeight * 0.1,
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
            onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const PageKeranjang();
                    })));},
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
            child: Container(
          color: Color(0xffBC6064),
          child: Column(children: [
            Container(
              height: bodyHeight * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Cari sesuatu yang kamu butuhkan",
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      size: 28,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                    fillColor: Color(0xffF3F1F5),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Container(
              height: bodyHeight * 0.01,
            ),
            Container(
              // height: bodyHeight * 0.2,
              width: sizeWidth * 10,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    // width: sizeWidth * 0.95,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: const Text(
                            "SALE...",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: sizeWidth * 0.26,
                        ),
                        Container(
                          child: const Text(
                            "Diskon Up to 30%",
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          child: Image(
                            image: AssetImage("images/produk1.png"),
                            width: sizeWidth * 0.3,
                            // height: sizeHeight * 0.3,
                          ),
                        ),
                        ClipRRect(
                          child: Image(
                            image: AssetImage("images/produk2.png"),
                            width: sizeWidth * 0.3,
                            // height: sizeHeight * 0.3,
                          ),
                        ),
                        ClipRRect(
                          child: Image(
                            image: AssetImage("images/produk3.png"),
                            width: sizeWidth * 0.3,
                            // height: sizeHeight * 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: bodyHeight * 0.05,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: ClipRRect(
                      child: Image(
                        image: AssetImage("images/voucher.png"),
                        width: sizeWidth * 0.3,
                        // height: sizeHeight * 0.3,
                      ),
                    ),
                  ),
                  ClipRRect(
                    child: Image(
                      image: AssetImage("images/voucher1.png"),
                      width: sizeWidth * 0.3,
                      // height: sizeHeight * 0.3,
                    ),
                  ),
                  ClipRRect(
                    child: Image(
                      image: AssetImage("images/voucher2.png"),
                      width: sizeWidth * 0.3,
                      // height: sizeHeight * 0.3,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: bodyHeight * 0.05,
            ),
            Container(
              // height: bodyHeight * 0.2,
              width: sizeWidth * 10,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    // width: sizeWidth * 0.95,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: const Text(
                            "PRODUK TERLARIS",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          child: Image(
                            image: AssetImage("images/produk1.png"),
                            width: sizeWidth * 0.3,
                            // height: sizeHeight * 0.3,
                          ),
                        ),
                        ClipRRect(
                          child: Image(
                            image: AssetImage("images/produk2.png"),
                            width: sizeWidth * 0.3,
                            // height: sizeHeight * 0.3,
                          ),
                        ),
                        ClipRRect(
                          child: Image(
                            image: AssetImage("images/produk3.png"),
                            width: sizeWidth * 0.3,
                            // height: sizeHeight * 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          child: Image(
                            image: AssetImage("images/produk1.png"),
                            width: sizeWidth * 0.3,
                            // height: sizeHeight * 0.3,
                          ),
                        ),
                        ClipRRect(
                          child: Image(
                            image: AssetImage("images/produk2.png"),
                            width: sizeWidth * 0.3,
                            // height: sizeHeight * 0.3,
                          ),
                        ),
                        ClipRRect(
                          child: Image(
                            image: AssetImage("images/produk3.png"),
                            width: sizeWidth * 0.3,
                            // height: sizeHeight * 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        )));
  }
}
