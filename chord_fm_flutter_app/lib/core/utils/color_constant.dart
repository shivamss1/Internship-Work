import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#6d6d6d');

  static Color whiteA7005b = fromHex('#5bffffff');

  static Color gray500 = fromHex('#979797');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color lightGrey = fromHex('#3e2c49');

  static Color gray80001 = fromHex('#4c3e56');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan500 = fromHex('#00d3d4');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
