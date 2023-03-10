import 'package:flutter/material.dart';
import 'package:soloq/utils/color_constant.dart';
import 'package:soloq/utils/size_utils.dart';
class AppDecoration {
  static BoxDecoration get fillGray900 => BoxDecoration(
    color: ColorConstant.gray900,
  );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
    color: ColorConstant.whiteA70019,
    border: Border.all(
      color: ColorConstant.whiteA700,
      width: getHorizontalSize(
        1,
      ),
    ),
  );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
    color: ColorConstant.whiteA700,
  );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );
}