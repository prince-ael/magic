import 'package:flutter/material.dart';
import '../consts/custom_colors.dart';

class Header extends StatelessWidget {
  final String title;
  final String subTitle;

  Header({
    this.title = "Login",
    this.subTitle = "Use Your Internet Banking Account",
  });

  Widget titleText() => Text(
        title,
        style: TextStyle(
          color: ColorIb.gray[800],
          fontFamily: 'FiraSans',
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
        ),
      );

  Widget subTitleText() => Text(
        subTitle,
        style: TextStyle(
            color: ColorIb.gray[600],
            fontFamily: 'FiraSans',
            fontSize: 14.0,
            fontWeight: FontWeight.normal),
      );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[titleText(), subTitleText()],
    );
  }
}
