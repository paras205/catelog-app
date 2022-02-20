import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, Routes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore_for_file: prefer_const_constructors
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (val) {
                        //setState calls the build() method to rerender the ui
                        setState(() {
                          name = val;
                        });
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value != null && value.length < 6) {
                          return "Password must be 6 characters long";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () => moveToHome(context),
                        child: Text("Login"),
                        style: TextButton.styleFrom(minimumSize: Size(150, 40)))
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
