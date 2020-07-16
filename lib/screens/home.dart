import 'package:flutter/material.dart';
import 'package:bottom_animation/bottom_animation.dart';
import 'package:google_fonts/google_fonts.dart';
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
        textStyle: GoogleFonts.lato(
          textStyle: TextStyle(
            color: AppColor.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconSize: 26,
        itemHoverWidth: 130,
        activeIconColor: AppColor.blue,
        backgroundColor: AppColor.background,
        deactiveIconColor: AppColor.lightIndigo,
        itemHoverColor: AppColor.lightIndigo,
        itemHoverColorOpacity: .9,
        itemHoverBorderRadius: 30,
        itemHoverHeight: 45,
        onItemSelect: (int value) {
          // setState(() {
          //   index = value;
          // });
        },
        selectedIndex: index,
      ),
      body: DynamicBody(),
    );
  }
}

class DynamicBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  Column(
                    children: [
                      Text('data'),
                      Text('data'),
                    ],
                  ),
                ],
              ),
              Container(
                color: Colors.green,
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 150,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 150,
                  ),
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 150,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("data"),
                  Text("data"),
                ],
              ),
              SizedBox(
                height: 270,
                child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemBuilder: (contex, index) {
                      return Container(
                        color: Colors.amberAccent,
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("data"),
                  Text("data"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
