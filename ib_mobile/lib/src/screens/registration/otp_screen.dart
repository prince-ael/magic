import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ib_mobile/src/consts/custom_colors.dart';
import 'package:ib_mobile/src/widgets/header.dart';
import 'package:ib_mobile/src/widgets/space.dart';

class OtpScreen extends StatelessWidget {
  Widget crossButton() => Row(
        children: <Widget>[
          Spacer(),
          ButtonTheme(
            minWidth: 48,
            height: 48,
            child: FlatButton(
              color: ColorIb.blue[800],
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(150.0))),
              child: Icon(
                Icons.clear,
                color: ColorIb.classicBlue[400],
                size: 24,
              ),
              onPressed: () {
                print("Hello");
              },
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorIb.gray[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SpaceIb.verticalSpaceOf(48.0),
              Header(
                title: "OTP Verification",
                subTitle: "Enter the OTP just sent to your mobile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
