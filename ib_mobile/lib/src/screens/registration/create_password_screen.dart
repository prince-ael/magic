import 'package:flutter/material.dart';
import '../../consts/custom_colors.dart';
import '../../consts/values.dart';
import '../../widgets/space.dart';
import '../../widgets/header.dart';

class CreatePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorIb.gray[300],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(32.0, 48.0, 32.0, 0.0),
          child: Column(
            children: <Widget>[
              Header(
                title: "Set Password",
                subTitle: "Create new password and let’s being extra safe",
              ),
              SpaceIb.verticalSpaceOf(48.0),
              showUserId(),
              SpaceIb.verticalSpaceOf(64.0),
              passwordInput(),
              SpaceIb.verticalSpaceOf(20.0),
              confirmPasswordInput(),
              SpaceIb.verticalSpaceOf(16.0),
              buttons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget showUserId() => Text(
        "AIB0100005",
        style: TextStyle(
          fontFamily: 'FiraSans',
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          color: ColorIb.classicBlue[200],
        ),
      );

  Widget passwordInput() => TextField(
        keyboardType: TextInputType.text,
        style: TextStyle(
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
            color: ColorIb.gray[800]),
        decoration: InputDecoration(
          labelText: "New password",
          hintText: "Enter new password",
          suffix: visibilityButton(),
          hintStyle: TextStyle(
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
            color: ColorIb.gray[500],
          ),
          labelStyle: TextStyle(
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.normal,
            fontSize: 12.0,
          ),
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderSide: Values.textfieldBorder,
            borderRadius: Values.borderRadiusOfFour,
          ),
        ),
      );

  Widget confirmPasswordInput() => TextField(
        keyboardType: TextInputType.text,
        style: TextStyle(
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
            color: ColorIb.gray[800]),
        decoration: InputDecoration(
          labelText: "Confirm password",
          hintText: "Confirm new password",
          hintStyle: TextStyle(
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
            color: ColorIb.gray[500],
          ),
          labelStyle: TextStyle(
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.normal,
            fontSize: 12.0,
          ),
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderSide: Values.textfieldBorder,
            borderRadius: Values.borderRadiusOfFour,
          ),
        ),
      );

  Widget buttons() {
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

    final done = ButtonTheme(
      minWidth: 84.0,
      height: 42.0,
      child: FlatButton(
        color: ColorIb.classicBlue[400],
        textColor: Colors.white,
        onPressed: null,
        disabledColor: ColorIb.classicBlue[200].withAlpha(128),
        disabledTextColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: Values.borderRadiusOfFour,
        ),
        child: Text(
          "Done",
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
        Spacer(),
        back,
        SpaceIb.horizontalSpaceOf(16.0),
        done,
      ],
    );
  }

  Widget visibilityButton() => InkWell(
        onTap: () {
          print("Show Pass");
        },
        child: Icon(Icons.visibility),
      );
}
