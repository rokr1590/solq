import 'dart:ui';
import 'package:flutter/material.dart';

import '../utils/color_constant.dart';
import '../utils/size_utils.dart';

class AppStyle {
  static TextStyle txtJosefinSansLight16WhiteA700 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Josefin Sans',
    fontWeight: FontWeight.w300,
  );

  static TextStyle txtJosefinSansSemiBold36 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      36,
    ),
    fontFamily: 'Josefin Sans',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtJosefinSansLight16 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Josefin Sans',
    fontWeight: FontWeight.w300,
  );

  static TextStyle txtJosefinSansLight16Blue500 = TextStyle(
    color: ColorConstant.blue500,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Josefin Sans',
    fontWeight: FontWeight.w300,
  );

}