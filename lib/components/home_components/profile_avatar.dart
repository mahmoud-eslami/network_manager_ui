import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imgPath;
  final double picSize;

  const ProfileAvatar({Key key, this.imgPath, this.picSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        imgPath,
        width: picSize,
        height: picSize,
        fit: BoxFit.cover,
      ),
    );
  }
}
