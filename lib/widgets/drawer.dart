import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/user.jpg"),
                  ),
                  accountName: Text("Welcome User"),
                  accountEmail: Text("user@gmail.com"),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.person_fill),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.shopping_cart),
              title: Text("Shop"),
            )
          ],
        ),
      ),
    );
  }
}
