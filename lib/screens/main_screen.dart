
import 'package:flutter/material.dart';
import 'package:task_manager/Constants/constants.dart';
import 'package:task_manager/screens/calendar/calendar.dart';
import 'package:task_manager/screens/home/home.dart';
import 'package:task_manager/screens/profile/profile.dart';

import 'focus/focus.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin{

  int _currentIndex = 0;
  List<Widget> body = const [
    HomeScreen(),
    CalendarScreen(),
    FocusScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.BACKGROUND_COLOR,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Icon(
            Icons.menu,
            color: ColorConstants.ICON_COLOR,
            size: 36,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Icon(
              Icons.account_circle,
              color: ColorConstants.ICON_COLOR,
              size: 36,
            ),
          ),
        ],
      ),
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: ColorConstants.BACKGROUND_COLOR,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade500,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int newIndex){
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: "Calendar"),
          BottomNavigationBarItem(icon: Icon(Icons.access_time),label: "Focus"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],

      ),
    );
  }
}
