import 'package:flutter/material.dart';
import 'package:test/pages/home_page.dart';
import 'package:test/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Variable types
    // int String double bool num var const final
    // var color = "dark";

    return MaterialApp(
      // home: Homepage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/login",
      routes: {
        // "/": (context) => Homepage(),
        "/login": (context) => Loginpage(),
        "/home": (context) => Homepage()
      },
    );
  }
}
