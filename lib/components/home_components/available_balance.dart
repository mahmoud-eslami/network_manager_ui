import 'package:flutter/material.dart';

class AvailableBalance extends StatelessWidget {
  final int balance;
  final Color bgColor;
  final double heightSize;
  final double widthSize;
  final double borderRadius;

  const AvailableBalance({
    Key key,
    this.balance,
    this.bgColor,
    this.heightSize,
    this.borderRadius,
    this.widthSize,
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
    );
  }
}
