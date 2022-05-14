import 'package:flutter/material.dart';

class UbahAlamat extends StatefulWidget {
  const UbahAlamat({Key? key}) : super(key: key);

  @override
  State<UbahAlamat> createState() => _UbahAlamatState();
}

class _UbahAlamatState extends State<UbahAlamat> {
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
        "Detail Alamat",
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
      body: Column(),
    );
  }
}
