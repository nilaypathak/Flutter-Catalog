import "package:flutter/material.dart";

class MyDrawerListItem extends StatelessWidget {
  final IconData myIcon;
  final String myItemName;
  const MyDrawerListItem(
      {Key? key, required this.myIcon, required this.myItemName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(myIcon, color: Colors.white),
        title: Text(myItemName,
            textScaleFactor: 1.2, style: TextStyle(color: Colors.white)));
  }
}
