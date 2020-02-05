import 'package:flutter/material.dart';
import 'package:ib_mobile/src/consts/custom_colors.dart';
import 'package:ib_mobile/src/consts/svg_ib.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashIb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SvgPicture.asset(
          SvgIb.logo,
          color: ColorIb.classicBlue[500],
        ),
      ),
    );
  }
}
