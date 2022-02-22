import 'package:flutter/material.dart';

import 'package:flutter_catelog/utils/routes.dart';
import 'package:flutter_catelog/pages/homepage.dart';
import 'package:flutter_catelog/pages/loginPage.dart';
import 'package:flutter_catelog/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: Routes.loginRoute,
      routes: {
        Routes.homeRoute: (context) => const HomePage(),
        Routes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
