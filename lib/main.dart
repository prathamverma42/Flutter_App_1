import 'package:flutter/material.dart';
import 'package:test/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Variable types
    // int String double bool num var const final

    return MaterialApp(
      home: Homepage(),
    );
  }
}
