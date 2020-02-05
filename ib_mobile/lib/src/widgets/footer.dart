import 'package:flutter/material.dart';
import '../consts/custom_colors.dart';

class Footer extends StatelessWidget {
  Widget rowLanguageSwitch() {
    final english = ButtonTheme(
      minWidth: 0.0,
      child: FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        // color: Colors.indigo,
        child: Text("English",
            style: TextStyle(
              color: ColorIb.classicBlue[800],
              fontWeight: FontWeight.bold,
            )),
        padding: EdgeInsets.only(right: 16.0),
        onPressed: () {
          print("English");
        },
      ),
    );
    final bangla = ButtonTheme(
      minWidth: 0.0,
      child: FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        // color: Colors.indigo,
        padding: EdgeInsets.only(left: 16.0),
        child: Text(
          "বাংলা",
          style:
              TextStyle(color: ColorIb.gray[600], fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          print("Bangla");
        },
      ),
    );

    final dividerLine = SizedBox(
      height: 15.0,
      child: VerticalDivider(
        color: Color(0xff828282),
        thickness: 1.4,
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[english, dividerLine, bangla],
    );
  }

  //B => Branch
  //A => ATM
  //H => Help
  Widget rowBAH() {
    final dot = Container(
      height: 4.0,
      width: 4.0,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Color(0xff828282)),
    );

    final branch = ButtonTheme(
      minWidth: 0.0,
      child: FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textColor: ColorIb.gray[600],
        padding: EdgeInsets.only(right: 16.0),
        child: Text("Branch"),
        onPressed: () {
          print("branch");
        },
      ),
    );
    final atm = ButtonTheme(
      minWidth: 0.0,
      child: FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textColor: ColorIb.gray[600],
        padding: EdgeInsets.only(right: 16.0, left: 16.0),
        child: Text("ATM"),
        onPressed: () {
          print("ATM");
        },
      ),
    );
    final help = ButtonTheme(
      minWidth: 0.0,
      child: FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textColor: ColorIb.gray[600],
        padding: EdgeInsets.only(left: 16.0),
        child: Text("Help"),
        onPressed: () {
          print("Help");
        },
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[branch, dot, atm, dot, help],
    );
  }

  Widget verticalSpaceOf(double pixel) => SizedBox(
        height: pixel,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[rowLanguageSwitch(), verticalSpaceOf(8.0), rowBAH()],
    );
  }
}
