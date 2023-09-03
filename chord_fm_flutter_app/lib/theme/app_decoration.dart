import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray800 => BoxDecoration(
        color: ColorConstant.lightGrey,
      );
  static BoxDecoration get fillGray80001 => BoxDecoration(
        color: ColorConstant.gray80001,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(6),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(10),
  );
}
