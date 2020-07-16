import 'package:flutter/material.dart';
import 'package:bottom_animation/bottom_animation.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BottomNavItem> items = [
    BottomNavItem(title: 'Home', iconData: Icons.home),
    BottomNavItem(title: 'Call', iconData: Icons.call),
    BottomNavItem(title: 'Images', iconData: Icons.picture_as_pdf),
    BottomNavItem(title: 'Profile', iconData: Icons.account_circle),
  ];
  int index;

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAnimation(
        items: items,
        iconSize: 20,
        itemHoverWidth: 130,
        textStyle: TextStyle(
          color: Colors.deepPurpleAccent,
        ),
        activeIconColor: Colors.deepPurple,
        backgroundColor: Colors.white,
        deactiveIconColor: Colors.purple,
        itemHoverColor: Colors.purple,
        onItemSelect: (int value) {
          setState(() {
            index = value;
          });
        },
        selectedIndex: index,
      ),
    );
  }
}
