import 'package:flutter/material.dart';
import 'package:bottom_animation/bottom_animation.dart';
import 'package:mobile_network_ui/resource/colors/colors.dart';

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
      backgroundColor: AppColor.background,
      bottomNavigationBar: BottomAnimation(
        items: items,
        iconSize: 26,
        itemHoverWidth: 130,
        textStyle: TextStyle(
          color: AppColor.blue,
        ),
        activeIconColor: AppColor.blue,
        backgroundColor: AppColor.background,
        deactiveIconColor: AppColor.lightIndigo,
        itemHoverColor: AppColor.lightIndigo,
        itemHoverColorOpacity: .9,
        itemHoverBorderRadius: 30,
        itemHoverHeight: 45,
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
