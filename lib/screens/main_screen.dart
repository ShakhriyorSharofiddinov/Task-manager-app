
import 'package:flutter/material.dart';
import 'package:task_manager/Constants/constants.dart';
import 'package:task_manager/screens/calendar/calendar.dart';
import 'package:task_manager/screens/home/home.dart';
import 'package:task_manager/screens/notification/notification.dart';
import 'package:task_manager/screens/search/search.dart';

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
    NotificationScreen(),
    SearchScreen()
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
        selectedItemColor: ColorConstants.CARD_COLOR,
        unselectedItemColor: ColorConstants.ICON_BG_COLOR,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int newIndex){
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: ""),
        ],

      ),
    );
  }
}
