import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_animation/bottom_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_network_ui/components/home_components/available_balance.dart';
import 'package:mobile_network_ui/components/home_components/cart_view.dart';
import 'package:mobile_network_ui/components/home_components/profile_avatar.dart';
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
                  ProfileAvatar(
                    imgPath: 'assets/images/girl.jpg',
                    picSize: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Anahit',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                      ),
                      Text(
                        '+44524332454',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              AvailableBalance(
                bgColor: AppColor.blue.withOpacity(.8),
                widthSize: MediaQuery.of(context).size.width,
                heightSize: 110,
                borderRadius: 25,
                balance: 1400,
                iconSize: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardView(
                    bgColor: AppColor.blue.withOpacity(.9),
                    count: 100,
                    imgPath: 'assets/images/buss.png',
                    heightSize: 160,
                    widthSize: 120,
                    borderRaduis: 25,
                    title: 'asdasd',
                    subTitle: 'asdasdasd',
                  ),
                  CardView(
                    bgColor: AppColor.dark,
                    count: 100,
                    imgPath: 'assets/images/chart.png',
                    heightSize: 160,
                    widthSize: 120,
                    borderRaduis: 25,
                    title: 'asdasd',
                    subTitle: 'asdasdasd',
                  ),
                  CardView(
                    bgColor: AppColor.lightPurpule,
                    count: 100,
                    imgPath: 'assets/images/sales.png',
                    heightSize: 160,
                    widthSize: 120,
                    borderRaduis: 25,
                    title: 'asdasd',
                    subTitle: 'asdasdasd',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "data",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "data",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 270,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: GridView.builder(
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.1,
                        mainAxisSpacing: 25,
                        crossAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColor.background,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: AppColor.lightIndigo,
                                    blurRadius: 10,
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/images/buss.png',
                                  width: 40,
                                ),
                                Text('asdasd')
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "data",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "data",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
