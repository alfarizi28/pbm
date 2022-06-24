import 'package:flutter/material.dart';

class PageChat extends StatelessWidget {
  const PageChat({ Key? key }) : super(key: key);

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
        "Chat",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      
      // leadingWidth: sizeWidth * 0.2,
    );

    final bodyHeight = sizeHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(resizeToAvoidBottomInset: false, appBar: myAppBar, body: Column(
      children: [
        Container(
          color: Color(0xFFE1E1E1),
          height: sizeHeight*0.78,
        ),
        Container(
          // height: sizeHeight*0.,
          // color: Color(0xffBB5A5A),
          child:  Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextFormField(
                // obscureText: true,
                decoration: InputDecoration(
                    hintText: "Masukan pesan disini",
                    prefixIcon: Icon(
                      Icons.add_rounded,
                      size: 28,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffBB5A5A)))),
              ),
          ),
        )
      ],
    ));
  }
}