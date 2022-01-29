// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_catalog/widgets/drawerlistitem.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/man5-512.png";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Nilay Pathak"),
                  accountEmail: Text("nilaydgp@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            MyDrawerListItem(myIcon: CupertinoIcons.home, myItemName: "Home"),
            MyDrawerListItem(
                myIcon: CupertinoIcons.profile_circled, myItemName: "Profile"),
            MyDrawerListItem(
                myIcon: CupertinoIcons.mail, myItemName: "Email me"),
          ],
        ),
      ),
    );
  }
}
