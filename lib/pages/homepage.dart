import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore_for_file: prefer_const_constructors
    const days = 30;
    const text = "Welcome to $days days of flutter";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text(text),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
