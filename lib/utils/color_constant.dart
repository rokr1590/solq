import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color blue500 = fromHex('#248bf2');

  static Color gray900 = fromHex('#121212');

  static Color yellow900 = fromHex('#d88716');

  static Color whiteA70019 = fromHex('#19ffffff');

  static Color deepPurpleA700 = fromHex('#6d20d8');

  static Color whiteA700 = fromHex('#ffffff');

  static Color pink400 = fromHex('#d835a2');

  static Color cyan400 = fromHex('#35d9cd');

  static Color red300 =fromHex('#F23051');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static LinearGradient pinkCyanPurple = const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [Color(0xffffb7ef), Color(0xffacf1ff), Color(0xffc387ff)], );
}