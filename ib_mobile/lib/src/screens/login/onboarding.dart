import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../blocs/login_bloc.dart';
import '../../consts/custom_colors.dart';
import '../../consts/values.dart';
import '../../consts/svg_ib.dart';
import '../../widgets/space.dart';

class Onboarding extends StatelessWidget {
  Widget titleText() => Text(
        "Welcome",
        style: TextStyle(
          fontSize: 24.0,
          fontFamily: 'FiraSans',
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      );

  Widget subTitleText() => Text(
        "to your Internet Banking App",
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'FiraSans',
          fontWeight: FontWeight.w300,
          color: Color(0xC0FFFFFF),
        ),
      );

  Widget getStartedButton(BuildContext context) => ButtonTheme(
        minWidth: 192.0,
        height: 48.0,
        child: FlatButton(
          textColor: ColorIb.classicBlue[500],
          color: ColorIb.gray[200],
          child: Text(
            "Get Started",
            style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'FiraSans',
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {
            LoginBloc bloc = Provider.of<LoginBloc>(context, listen: false);
            bloc.changeFreshInstallationStatus();
          },
          shape:
              RoundedRectangleBorder(borderRadius: Values.borderRadiusOfFour),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_logo.png"),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            colors: [ColorIb.classicBlue[500], ColorIb.classicBlue[800]],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 1],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SvgPicture.asset(
                    SvgIb.logo,
                  ),
                  SpaceIb.verticalSpaceOf(16.0),
                  titleText(),
                  SpaceIb.verticalSpaceOf(16.0),
                  subTitleText(),
                  SpaceIb.verticalSpaceOf(120.0),
                  getStartedButton(context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
