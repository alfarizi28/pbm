import 'package:flutter/material.dart';

class Voucher extends StatefulWidget {
  const Voucher({Key? key}) : super(key: key);

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
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
    return Scaffold(appBar: myAppBar, body: Container());
  }
}
