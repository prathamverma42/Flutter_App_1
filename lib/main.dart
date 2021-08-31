import 'package:flutter/material.dart';
import 'package:test/pages/home_page.dart';
import 'package:test/pages/login_page.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:test/utils/routes.dart';
import 'package:test/widgets/themes.dart';

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
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      //    ThemeData(
      //   primarySwatch: Colors.deepPurple,
      //   fontFamily: GoogleFonts.lato().fontFamily,
      //   // primaryTextTheme: GoogleFonts.latoTextTheme(),
      // ),
      // darkTheme: ThemeData(
      //   // brightness: Brightness.dark,
      //   primarySwatch: Colors.blue,
      // ),routes
      initialRoute: MyRoutes.loginRoute,
      routes: {
        // "/": (context) => Homepage(),
        MyRoutes.loginRoute: (context) => Loginpage(),
        MyRoutes.homeRoute: (context) => Homepage()
      },
    );
  }
}
