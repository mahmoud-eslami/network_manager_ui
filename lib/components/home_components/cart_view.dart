import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_network_ui/resource/colors/colors.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imgPath,
              width: 40,
            ),
            Text(
              title,
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                color: AppColor.background,
                fontWeight: FontWeight.w700,
              )),
            ),
            Text(
              '$count',
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                color: AppColor.background,
                fontWeight: FontWeight.w700,
              )),
            ),
            Text(
              subTitle,
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                color: AppColor.background,
                fontWeight: FontWeight.w700,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
