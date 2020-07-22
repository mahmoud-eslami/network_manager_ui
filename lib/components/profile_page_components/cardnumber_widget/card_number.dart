import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_network_ui/resource/colors/colors.dart';

class CardNumber extends StatefulWidget {
  final String name;
  final Color bkColor;

  const CardNumber({
    Key key,
    this.name,
    this.bkColor,
  }) : super(key: key);

  @override
  _CardNumberState createState() => _CardNumberState();
}

class _CardNumberState extends State<CardNumber> {
  @override
  Widget build(BuildContext context) {
    var height = 200.0;
    var width = 250.0;
    return Container(
      height: height,
      width: width + (width / 3.9),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColor.dark.withOpacity(.6),
            blurRadius: 20,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),
              color: widget.bkColor.withOpacity(.75),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.background.withOpacity(.5),
                          ),
                        ),
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.background,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      widget.name,
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        textStyle: TextStyle(color: AppColor.background),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Text(
                    '1123\t\t2343\t\t1243\t\t23314',
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      textStyle: TextStyle(color: AppColor.background),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: width / 3.9,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(30)),
              color: widget.bkColor.withOpacity(.9),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.settings,
                  color: AppColor.lightIndigo,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
