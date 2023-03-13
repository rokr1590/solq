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

  static TextStyle txtJosefinSansLight16Black = TextStyle(
      color: Colors.black,
      fontSize: getFontSize(
          12
      ),
      fontFamily: "Josefin Sans"
  );
  static TextStyle txtJosefinSansLight10Black = TextStyle(
      color: Colors.black,
      fontSize: getFontSize(
          10
      ),
      fontFamily: "Josefin Sans"
  );

  static TextStyle txtJosefinSansSemiBold36 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      36,
    ),
    fontFamily: 'Josefin Sans',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtJosefinSansLight12 =TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: 12,
    fontFamily: "Josefin Sans",
    fontWeight: FontWeight.w300,
  );

  static TextStyle txtJosefinSansLight13Black =TextStyle(
    color: ColorConstant.black900,
    fontSize: 13,
    fontFamily: "Josefin Sans",
    fontWeight: FontWeight.w300,
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

  static TextStyle txtJosefinSansSemiBold20 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Josefin Sans',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtJosefinSansSemiBold16 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Josefin Sans',
    fontWeight: FontWeight.w600,
  );

}