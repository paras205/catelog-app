import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_catelog/pages/homepage.dart';
import 'package:flutter_catelog/pages/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      initialRoute: "/login",
      routes: {
        Routes.homeRoute: (context) => HomePage(),
        Routes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
