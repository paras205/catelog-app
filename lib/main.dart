import 'package:flutter/material.dart';

import 'package:flutter_catelog/utils/routes.dart';
import 'package:flutter_catelog/pages/homepage.dart';
import 'package:flutter_catelog/pages/loginPage.dart';
import 'package:flutter_catelog/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore_for_file: prefer_const_constructors

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: Routes.loginRoute,
      routes: {
        Routes.homeRoute: (context) => HomePage(),
        Routes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
