import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ib_mobile/src/widgets/header.dart';
import '../../consts/custom_colors.dart';
import '../../consts/route_names.dart';
import '../../consts/values.dart';
import '../../widgets/space.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorIb.gray[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: <Widget>[
                SpaceIb.verticalSpaceOf(48.0),
                Header(
                  title: "OTP Verification",
                  subTitle: "Enter the OTP just sent to your mobile",
                ),
                SpaceIb.verticalSpaceOf(80.0),
                timerText(),
                SpaceIb.verticalSpaceOf(27.0),
                nothingTextField(),
                SpaceIb.verticalSpaceOf(24.0),
                buttons(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget nothingTextField() => TextField(
        style: TextStyle(fontSize: 20.0, color: ColorIb.gray[800]),
        decoration: InputDecoration(
            labelText: "User Id",
            hintText: "Enter your user id",
            border: OutlineInputBorder(
              borderSide: Values.textfieldBorder,
              borderRadius: Values.borderRadiusOfFour,
            )),
      );

  Widget timerText() => Text(
        "00:17",
        style: TextStyle(
          fontFamily: 'FiraSans',
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: ColorIb.classicBlue[200],
        ),
      );

  Widget buttons(BuildContext context) {
    final resendOTP = ButtonTheme(
      minWidth: 0.0,
      height: 42.0,
      child: FlatButton(
        padding: EdgeInsets.only(right: 8.0),
        disabledTextColor: ColorIb.classicBlue[200].withAlpha(85),
        onPressed: null,
        textColor: ColorIb.classicBlue[200],
        child: Text(
          "Resend OTP",
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );

    final back = ButtonTheme(
      height: 42.0,
      minWidth: 48.0,
      child: FlatButton(
        onPressed: () {
          print("back");
        },
        child: Icon(
          Icons.arrow_back,
          color: ColorIb.classicBlue[400],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: Values.borderRadiusOfFour,
          side: BorderSide(color: ColorIb.classicBlue[400]),
        ),
      ),
    );

    final verify = ButtonTheme(
      minWidth: 84.0,
      height: 42.0,
      child: FlatButton(
        color: ColorIb.classicBlue[400],
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: Values.borderRadiusOfFour,
        ),
        onPressed: () {
          Navigator.pushNamed(context, RouteNames.successScreen);
        },
        disabledColor: ColorIb.classicBlue[200].withAlpha(128),
        disabledTextColor: Colors.white,
        child: Text(
          "Verify",
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );

    return Row(
      children: <Widget>[
        resendOTP,
        Spacer(),
        back,
        SpaceIb.horizontalSpaceOf(16.0),
        verify,
      ],
    );
  }
}
