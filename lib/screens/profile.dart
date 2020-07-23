import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_network_ui/components/profile_page_components/button_widget/button_widget.dart';
import 'package:mobile_network_ui/components/profile_page_components/cardnumber_widget/card_number.dart';
import 'package:mobile_network_ui/resource/colors/colors.dart';

class ProfilePage extends StatefulWidget {
  final Animation<double> transactionAnimation;

  const ProfilePage({
    Key key,
    @required this.transactionAnimation,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: AnimatedBuilder(
          animation: widget.transactionAnimation,
          builder: (context, child) {
            return FadeTransition(
              opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(
                    parent: widget.transactionAnimation,
                    curve: Interval(
                      0.0,
                      1.0,
                      curve: Curves.ease,
                    )),
              ),
              child: _DynamicBody(),
            );
          },
        ),
      ),
    );
  }
}

class _DynamicBody extends StatefulWidget {
  @override
  _DynamicBodyState createState() => _DynamicBodyState();
}

class _DynamicBodyState extends State<_DynamicBody> {
  List<CardNumber> cardList = [
    CardNumber(
      bkColor: AppColor.blue,
      name: 'Ahmad',
    ),
    CardNumber(
      bkColor: AppColor.dark,
      name: 'Zoghi',
    ),
    CardNumber(
      bkColor: AppColor.lightPurpule,
      name: '100 tomn midm',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Payment methods',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w800,
                    fontSize: 23,
                  ),
                ),
                CustomButton(
                  height: 25,
                  width: 80,
                  btnColor: AppColor.blue.withOpacity(.8),
                  onPress: () {},
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.add,
                        color: AppColor.background,
                        size: 10,
                      ),
                      Text(
                        'Add',
                        style: GoogleFonts.lato(
                          color: AppColor.background,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 250,
            child: CarouselSlider(
              items: cardList,
              options: CarouselOptions(
                autoPlay: true,
                disableCenter: false,
                enlargeCenterPage: true,
                viewportFraction: .9,
                aspectRatio: 2.0,
                initialPage: 1,
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.background,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: AppColor.dark.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 15,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Text(
                  '0 AMD',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: AppColor.dark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.background,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: AppColor.dark.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 15,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mobile Phone',
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        color: AppColor.dark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Telephone number',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            color: AppColor.dark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '0541236127',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            color: AppColor.dark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Debt Amount',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            color: AppColor.dark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '0.00 AMD',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            color: AppColor.dark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          CustomButton(
            onPress: () {},
            btnColor: AppColor.blue.withOpacity(.7),
            title: Text(
              'Pay Now',
              style: GoogleFonts.lato(
                fontSize: 20,
                color: AppColor.background,
              ),
            ),
            width: MediaQuery.of(context).size.width / 1.8,
            height: 45,
          ),
        ],
      ),
    );
  }
}
