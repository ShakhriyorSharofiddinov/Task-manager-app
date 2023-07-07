import 'package:flutter/material.dart';

import 'constants/colors.dart';

ThemeData myTheme(){
  return ThemeData(
    primarySwatch: Colors.blue,
    fontFamily: "Lato",
    scaffoldBackgroundColor: kdark,
    appBarTheme: const AppBarTheme(
        backgroundColor: kdark,
        elevation: 0,
        titleTextStyle: TextStyle(fontFamily: "Lato",fontSize: 20),
        centerTitle: true
    ));
}