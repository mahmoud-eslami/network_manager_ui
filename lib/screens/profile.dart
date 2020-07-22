import 'package:flutter/material.dart';
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
      body: AnimatedBuilder(
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
    );
  }
}

class _DynamicBody extends StatefulWidget {
  @override
  _DynamicBodyState createState() => _DynamicBodyState();
}

class _DynamicBodyState extends State<_DynamicBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CardNumber(name: 'Mahmoud',bkColor: AppColor.blue,),
      ),
    );
  }
}
