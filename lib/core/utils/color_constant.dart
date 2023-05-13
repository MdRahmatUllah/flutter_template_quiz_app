import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color gray5001 = fromHex('#f7f9fa');

  static Color gray5002 = fromHex('#fbfbfb');

  static Color blueA400 = fromHex('#367bf5');

  static Color lightBlue500 = fromHex('#07aaf4');

  static Color green600 = fromHex('#539e43');

  static Color gray50 = fromHex('#f4f7fd');

  static Color black9001e = fromHex('#1e000000');

  static Color black900 = fromHex('#000000');

  static Color yellow800 = fromHex('#f3aa18');

  static Color indigo90019 = fromHex('#191c3971');

  static Color blueGray900 = fromHex('#102142');

  static Color gray700 = fromHex('#5e6366');

  static Color gray400 = fromHex('#c6cacc');

  static Color black9000a = fromHex('#0a000000');

  static Color gray500 = fromHex('#919699');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color amber400 = fromHex('#f7df1e');

  static Color blueGray400 = fromHex('#888888');

  static Color gray800 = fromHex('#3e4345');

  static Color redA200 = fromHex('#fa5d50');

  static Color indigo50 = fromHex('#d5e0f7');

  static Color orange800 = fromHex('#e27006');

  static Color black9000f = fromHex('#0f000000');

  static Color green50 = fromHex('#dcf7e3');

  static Color gray300 = fromHex('#e3e5e6');

  static Color blue50 = fromHex('#e6efff');

  static Color gray100 = fromHex('#f1f3f4');

  static Color indigo90021 = fromHex('#211c3971');

  static Color indigo400 = fromHex('#4c88af');

  static Color green60028 = fromHex('#282ea84e');

  static Color gray10001 = fromHex('#f2f2f2');

  static Color indigo900 = fromHex('#1c3971');

  static Color green60001 = fromHex('#2fa84f');

  static Color black90019 = fromHex('#19000000');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
