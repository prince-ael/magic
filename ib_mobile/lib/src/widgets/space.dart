import 'package:flutter/material.dart';

class SpaceIb {
  static Widget verticalSpaceOf(double pixel) => SizedBox(
        height: pixel,
      );
  static Widget horizontalSpaceOf(double pixel) => SizedBox(
        width: pixel,
      );
}
