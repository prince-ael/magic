import 'package:flutter/material.dart';
import './space.dart';

class CheckboxIb extends StatefulWidget {
  final double size;
  final double labelPadding;
  final Text label;
  final Color checkColor;
  final Color outerRectBorderColor;

  CheckboxIb(
      {this.size = 16.0,
      this.label,
      this.checkColor,
      this.labelPadding = 16.0,
      this.outerRectBorderColor = Colors.grey});

  @override
  CheckboxIbState createState() {
    return CheckboxIbState();
  }
}

class CheckboxIbState extends State<CheckboxIb> {
  bool _isChecked = false;
  final double borderRadius = 2.0;

  void changeCheckStatus() {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  BoxDecoration checkDecoration() {
    if (_isChecked) {
      return BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        border: Border.all(width: 1.0, color: widget.checkColor),
        color: widget.checkColor,
      );
    }
    return null;
  }

  Widget checkBox() => Container(
        height: widget.size,
        width: widget.size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          border: Border.all(width: 1.0, color: widget.outerRectBorderColor),
        ),
        child: Center(
          child: Container(
            height: widget.size - 5,
            width: widget.size - 5,
            decoration: checkDecoration(),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: changeCheckStatus,
      child: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          checkBox(),
          SpaceIb.horizontalSpaceOf(widget.labelPadding),
          widget.label,
        ],
      ),
    );
  }
}
