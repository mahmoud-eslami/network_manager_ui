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
    return Column(
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
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColor.background,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: <BoxShadow>[
                BoxShadow(color: AppColor.dark.withOpacity(.5)),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('0 AMD'),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColor.background,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: <BoxShadow>[
                BoxShadow(color: AppColor.dark.withOpacity(.5)),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mobile Phone'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Telephone number'),
                    Text('0541236127'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text('Debt Amount'),
                    Text('0.00 AMD'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
