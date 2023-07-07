import 'package:flutter/material.dart';
import 'package:task_manager/core/constants/colors.dart';
import 'package:task_manager/core/theme.dart';
import 'package:task_manager/screens/intro/splash/splash_screen.dart';
import 'package:task_manager/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UpToDo",
      theme: myTheme(),
      home: const MainScreen(),
    );
  }
}
