import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../consts/custom_colors.dart';
import '../../widgets/space.dart';
import '../../consts/values.dart';
import '../../consts/svg_ib.dart';
import '../../consts/route_names.dart';

class SuccessScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorIb.gray[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 56.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(SvgIb.succLogo),
                SpaceIb.verticalSpaceOf(48.0),
                congrats(),
                SpaceIb.verticalSpaceOf(24.0),
                displaySuccessMessage(),
                SpaceIb.verticalSpaceOf(36.0),
                userIdText(),
                SpaceIb.verticalSpaceOf(48.0),
                continueButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget displaySuccessMessage() => Flexible(
        child: Text(
          Values.succMsgUserID,
          style: TextStyle(
              fontFamily: 'FiraSans',
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: ColorIb.gray[600]),
          softWrap: true,
        ),
      );

  Widget congrats() => Text(
        "Congratulations",
        style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: ColorIb.green[400]),
      );

  Widget userIdText() => Text(
        "AIB0100005",
        style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: ColorIb.gray[800]),
      );

  Widget continueButton(BuildContext context) => ButtonTheme(
        minWidth: 192.0,
        height: 48.0,
        child: FlatButton(
            textColor: Colors.white,
            color: ColorIb.classicBlue[400],
            onPressed: () {
              print("continue");
              Navigator.pushNamed(context, RouteNames.createPasswordScreen);
            },
            child: Text(
              "Continue",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontFamily: 'FiraSans',
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: Values.borderRadiusOfFour,
              side: BorderSide(color: ColorIb.classicBlue[400]),
            )),
      );
}
