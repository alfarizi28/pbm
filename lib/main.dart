// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pbm/page_satu.dart';

void main() {
  runApp(GanApp());
}

// ignore: use_key_in_widget_constructors
class GanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: PageSatu());
  }
}
