import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Widget title;
  final Function onPress;
  final Color btnColor;
  final double width;
  final double height;
  final double titleSize;

  const CustomButton({
    Key key,
    this.title,
    this.onPress,
    this.btnColor,
    this.width,
    this.height,
    this.titleSize,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: RaisedButton(
        color: widget.btnColor,
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: widget.title,
      ),
    );
  }
}
