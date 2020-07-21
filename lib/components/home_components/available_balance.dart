import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_network_ui/resource/colors/colors.dart';

class AvailableBalance extends StatefulWidget {
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
  _AvailableBalanceState createState() => _AvailableBalanceState();
}

class _AvailableBalanceState extends State<AvailableBalance>
    with TickerProviderStateMixin {

  AnimationController sizeController;

  Animation<double> sizeAnimation;
  Animation<Color> colorAnimation;

  @override
  void initState() {
    sizeController =
    AnimationController(vsync: this, duration: Duration(milliseconds: 1500))
      ..repeat(reverse: true);
    sizeAnimation = Tween<double>(begin: .6, end: 1).animate(CurvedAnimation(
      curve: Interval(0.0, 1.0, curve: Curves.ease),
      parent: sizeController,
    ));
    colorAnimation =
        ColorTween(begin: AppColor.dark, end: widget.bgColor.withOpacity(.8))
            .animate(CurvedAnimation(
          curve: Interval(0.0, 1.0, curve: Curves.ease),
          parent: sizeController,
        ));
    super.initState();
  }

  @override
  void dispose() {
    sizeController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.widthSize,
      height: widget.heightSize,
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.all(
          Radius.circular(widget.borderRadius),
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
                  '${widget.balance} AMD',
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
            ScaleTransition(
              scale: sizeAnimation,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.background,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: widget.bgColor,
                    size: widget.iconSize,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
