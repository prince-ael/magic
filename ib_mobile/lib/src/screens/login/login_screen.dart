import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './onboarding.dart';
import './splash.dart';
import '../../consts/custom_colors.dart';
import '../../widgets/header.dart';
import '../../widgets/footer.dart';
import '../../consts/route_names.dart';
import '../../consts/values.dart';
import '../../widgets/space.dart';
import '../../blocs/login_bloc.dart';
import '../../widgets/custom_checkbox.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginBloc>(
      builder: (context, bloc, _) {
        if (bloc.isFreshlyInstalled == null) {
          return SplashIb();
        } else if (bloc.isFreshlyInstalled) {
          return Onboarding();
        }
        return loginWidgets(context);
      },
    );
  }

  Widget userIdTextField() => TextField(
        style: TextStyle(fontSize: 20.0, color: ColorIb.gray[800]),
        decoration: InputDecoration(
            labelText: "User Id",
            hintText: "Enter your user id",
            suffix: CheckboxIb(
              label: Text(
                "Save ID",
                style: TextStyle(
                    color: ColorIb.classicBlue[200],
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0),
              ),
              checkColor: ColorIb.classicBlue[300], //Don't know exact weight
              outerRectBorderColor: ColorIb.classicBlue[200],
            ),
            border: OutlineInputBorder(
              borderSide: Values.textfieldBorder,
              borderRadius: Values.borderRadiusOfFour,
            )),
      );
  Widget passwordTextField() => null;

  //F => Forgot
  //R => Register
  //C => Continue
  //L => Login
  Widget rowFRCL(BuildContext context) {
    final forgot = ButtonTheme(
      minWidth: 0.0,
      child: FlatButton(
        textColor: ColorIb.gray[800],
        child: Text("Forgot ?"),
        padding: EdgeInsets.only(right: 8.0),
        onPressed: () {
          print("Forgot ?");
        },
      ),
    );

    final register = ButtonTheme(
      child: FlatButton(
        textColor: ColorIb.classicBlue[500],
        child: Text("Register"),
        onPressed: () {
          Navigator.pushNamed(context, RouteNames.registrationScreen);
        },
      ),
    );

    final loginAndContinue = FlatButton(
      color: ColorIb.classicBlue[400],
      textColor: Colors.white,
      child: Text("Continue"),
      shape: RoundedRectangleBorder(borderRadius: Values.borderRadiusOfFour),
      onPressed: () {
        print("Continue");
      },
    );

    return Row(
      children: <Widget>[
        forgot,
        Spacer(),
        register,
        SpaceIb.horizontalSpaceOf(8.0),
        loginAndContinue
      ],
    );
  }

  Widget loginWidgets(BuildContext context) => Scaffold(
        backgroundColor: ColorIb.gray[300],
        body: SafeArea(
          child: Container(
            // color: Colors.red,
            margin: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 0.0),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Header(),
                Spacer(),
                userIdTextField(),
                SpaceIb.verticalSpaceOf(8.0),
                rowFRCL(context),
                Spacer(
                  flex: 2,
                ),
                Footer()
              ],
            ),
          ),
        ),
      );
}
