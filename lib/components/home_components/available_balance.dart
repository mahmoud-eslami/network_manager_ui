import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_network_ui/resource/colors/colors.dart';

class AvailableBalance extends StatelessWidget {
  final int balance;
  final Color bgColor;
  final double heightSize;
  final double widthSize;
  final double borderRadius;
  final double iconSize;

  const AvailableBalance({
    Key key,
    this.balance,
    this.bgColor,
    this.heightSize,
    this.borderRadius,
    this.widthSize,
    this.iconSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthSize,
      height: heightSize,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Available Balance',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: AppColor.background,
                        fontSize: 15,
                      ),
                    )),
                Text(
                  '$balance AMD',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: AppColor.background,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: AppColor.background,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: bgColor,
                  size: iconSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
