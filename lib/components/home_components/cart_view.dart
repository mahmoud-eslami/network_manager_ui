import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardView extends StatelessWidget {
  final String title;
  final String subTitle;
  final double count;
  final String imgPath;
  final Color bgColor;
  final double borderRaduis;
  final double heightSize;
  final double widthSize;

  const CardView({
    Key key,
    this.title,
    this.subTitle,
    this.count,
    this.imgPath,
    this.bgColor,
    this.borderRaduis,
    this.heightSize,
    this.widthSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightSize,
      width: widthSize,
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: <BoxShadow>[
          BoxShadow(),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(
            borderRaduis,
          ),
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            imgPath,
            width: 60,
          ),
          Text(
            title,
            style: GoogleFonts.lato(textStyle: TextStyle()),
          ),
          Text(
            '$count',
            style: GoogleFonts.lato(textStyle: TextStyle()),
          ),
          Text(
            subTitle,
            style: GoogleFonts.lato(textStyle: TextStyle()),
          ),
        ],
      ),
    );
  }
}
