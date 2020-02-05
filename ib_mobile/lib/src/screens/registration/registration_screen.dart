import 'package:flutter/material.dart';
import 'package:ib_mobile/src/consts/custom_colors.dart';
import '../../widgets/footer.dart';
import '../../widgets/header.dart';
import '../../consts/values.dart';
import '../../widgets/space.dart';
import '../../consts/route_names.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formSpace = 16.0;
    return Scaffold(
      backgroundColor: ColorIb.gray[300],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 0.0),
          child: Column(
            children: <Widget>[
              Header(
                title: "Registration",
                subTitle: "Create Your Internet Banking Account",
              ),
              SpaceIb.verticalSpaceOf(32.0),
              customerIdInput(),
              SpaceIb.verticalSpaceOf(formSpace),
              accountNumberInput(),
              SpaceIb.verticalSpaceOf(formSpace),
              branchInput(),
              SpaceIb.verticalSpaceOf(formSpace),
              dobInput(),
              SpaceIb.verticalSpaceOf(formSpace),
              mobileNumberInput(),
              SpaceIb.verticalSpaceOf(8.0),
              termsAndConditions(),
              SpaceIb.verticalSpaceOf(16.0),
              loginAndrRegister(context),
              Spacer(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget customerIdInput() => TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: "Customer Id",
          hintText: "Enter your customer id",
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderSide: Values.textfieldBorder,
            borderRadius: Values.borderRadiusOfFour,
          ),
        ),
      );

  Widget accountNumberInput() => TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: "Account Number",
            hintText: "Enter account number",
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderSide: Values.textfieldBorder,
              borderRadius: Values.borderRadiusOfFour,
            )),
      );

  Widget branchInput() => TextField(
        enabled: false,
        decoration: InputDecoration(
            hintText: "Select or search branch",
            suffixIcon: Icon(Icons.arrow_drop_down),
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderSide: Values.textfieldBorder,
              borderRadius: Values.borderRadiusOfFour,
            )),
      );

  Widget dobInput() => TextField(
        enabled: false,
        decoration: InputDecoration(
            hintText: "Date of Birth (dd-mm--yyyy)",
            suffixIcon: Icon(Icons.calendar_today),
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderSide: Values.textfieldBorder,
              borderRadius: Values.borderRadiusOfFour,
            )),
      );

  Widget mobileNumberInput() => TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            labelText: "Mobile Number",
            hintText: "Enter mobile number",
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderSide: Values.textfieldBorder,
              borderRadius: Values.borderRadiusOfFour,
            )),
      );

  Widget termsAndConditions() {
    final checkBox = Checkbox(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      activeColor: Color(0xff527fc0),
      checkColor: Colors.white,
      value: true,
      onChanged: (isChecked) {
        print(isChecked);
      },
    );

    final text = Text("I agree with terms and conditions");

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[checkBox, text],
    );
  }

  Widget loginAndrRegister(BuildContext context) {
    final registerButton = FlatButton(
      color: ColorIb.classicBlue[400],
      textColor: Colors.white,
      onPressed: () {
        Navigator.pushNamed(context, RouteNames.otpScreen);
      },
      disabledColor: ColorIb.classicBlue[200],
      disabledTextColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: Values.borderRadiusOfFour),
      child: Text("Register"),
    );

    final loginButton = ButtonTheme(
      minWidth: 0.0,
      child: FlatButton(
        padding: EdgeInsets.only(right: 8.0),
        onPressed: () {
          print("Navigate to login");
          Navigator.pop(context);
        },
        child: Text("Login"),
        textColor: ColorIb.classicBlue[500],
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[loginButton, registerButton],
    );
  }
}
