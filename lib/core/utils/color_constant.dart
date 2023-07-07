import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color deepOrangeA100 = fromHex('#ff967f');

  static Color cyanA100 = fromHex('#7fffff');

  static Color whiteA700F9 = fromHex('#f9ffffff');

  static Color lightGreenA100 = fromHex('#ccff7f');

  static Color indigoA100 = fromHex('#8e7cff');

  static Color indigo3007f = fromHex('#7f8687e7');

  static Color whiteA700Aa = fromHex('#aaffffff');

  static Color teal300 = fromHex('#41cca7');

  static Color lightGreen600 = fromHex('#66cc41');

  static Color blueGray700 = fromHex('#525252');

  static Color whiteA70019 = fromHex('#19ffffff');

  static Color deepPurpleA200 = fromHex('#8874ff');

  static Color blueGray900 = fromHex('#363636');

  static Color gray400 = fromHex('#afafaf');

  static Color redA200 = fromHex('#ff4949');

  static Color gray800 = fromHex('#4c4c4c');

  static Color teal30001 = fromHex('#41a2cc');

  static Color gray200 = fromHex('#e7e7e7');

  static Color orange200 = fromHex('#ffcc7f');

  static Color indigoA10001 = fromHex('#7f9bff');

  static Color indigo400 = fromHex('#4181cc');

  static Color tealA20001 = fromHex('#7fffd1');

  static Color whiteA700 = fromHex('#ffffff');

  static Color lightBlue200 = fromHex('#7fd1ff');

  static Color greenA200 = fromHex('#7fffa3');

  static Color whiteA70070 = fromHex('#70ffffff');

  static Color black900Bc = fromHex('#bc000000');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#a5a5a5');

  static Color whiteA70035 = fromHex('#35ffffff');

  static Color deepOrange400 = fromHex('#cc8341');

  static Color purpleA100 = fromHex('#ff7fea');

  static Color pink400 = fromHex('#cc4173');

  static Color purple400 = fromHex('#9741cc');

  static Color gray90002 = fromHex('#262626');

  static Color purpleA10001 = fromHex('#fc7fff');

  static Color gray90003 = fromHex('#1a2033');

  static Color gray700 = fromHex('#555555');

  static Color gray90004 = fromHex('#33331a');

  static Color gray500 = fromHex('#979797');

  static Color gray90005 = fromHex('#331f1a');

  static Color lime600 = fromHex('#c9cc41');

  static Color blueGray400 = fromHex('#888888');

  static Color redA100 = fromHex('#ff7f7f');

  static Color gray900 = fromHex('#121212');

  static Color gray90001 = fromHex('#1c1c1c');

  static Color tealA200 = fromHex('#7fffd8');

  static Color indigo300 = fromHex('#8687e7');

  static Color whiteA700Dd = fromHex('#ddffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
