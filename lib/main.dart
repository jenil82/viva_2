import 'package:flutter/material.dart';
import 'data.dart';
import 'detapage.dart';
import 'hom.dart';
import 'page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        'add': (context) => Add(),
        'detail': (context) => Detail(),
      },
    ),
  );
}

class Global {
  static List<Data> allData = [];
}