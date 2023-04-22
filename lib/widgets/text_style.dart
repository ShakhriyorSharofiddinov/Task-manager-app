import 'dart:ui';
import 'package:flutter/cupertino.dart';

Widget textStyle(String text, double size, Color color, FontWeight fontWeight) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}
