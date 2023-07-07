import 'package:flutter/material.dart';
import 'package:task_manager/core/constants/colors.dart';
import 'package:task_manager/screens/calendar/calendar.dart';
import 'package:task_manager/screens/home/home.dart';
import 'package:task_manager/screens/login/components/my_textfield.dart';
import 'package:task_manager/screens/profile/profile.dart';

import 'focus/focus.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  int _currentIndex = 0;
  final taskController = TextEditingController();
  final descriptionController = TextEditingController();

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: kgreyX,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  height: 230,
                  child: Column(
                    children: [
                      Text(
                        "Add Task",
                        style: TextStyle(color: kwhite, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      textField(taskController, false, "Task"),
                      textField(descriptionController, false, "Description"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          iconButton(() {}, Icons.timer_outlined, kwhite),
                          iconButton(() {}, Icons.markunread_mailbox_sharp, kwhite),
                          iconButton(
                              () {}, Icons.bookmark_outline_sharp, kwhite),
                          Spacer(),
                          iconButton(() {}, Icons.send_outlined, kpink),
                        ],
                      )
                    ],
                  ),
                );
              });
        },
        backgroundColor: kpink,
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          color: const Color(0xff363636),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(),
              materialButton(const HomeScreen(), 0, Icons.home, "Home"),
              const Spacer(),
              materialButton(
                  const CalendarScreen(), 1, Icons.calendar_month, "Calendar"),
              const Spacer(
                flex: 10,
              ),
              materialButton(
                  const FocusScreen(), 2, Icons.access_time_rounded, "Focus"),
              const Spacer(),
              materialButton(const ProfileScreen(), 3, Icons.person, "Profile"),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconButton(Function()? function, IconData iconData, Color color) {
    return IconButton(
      onPressed: function,
      icon: Icon(
        iconData,
        color: color,
      ),
      splashRadius: 30,
    );
  }

  Widget textField(
      TextEditingController controller, bool obscureText, String hintText) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(color: kwhite),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite),
            borderRadius: BorderRadius.circular(4),
          ),
          isDense: true,
          hintText: hintText,
          hintStyle: TextStyle(color: kgrey)),
    );
  }

  Widget materialButton(
      Widget widget, int currentIndex, IconData icon, String text) {
    return MaterialButton(
      minWidth: 40,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onPressed: () {
        setState(() {
          currentScreen = widget;
        });
        _currentIndex = currentIndex;
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: currentIndex == _currentIndex ? kwhite : kgrey,
            size: 26,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            text,
            style: TextStyle(
              color: currentIndex == _currentIndex ? kwhite : kgrey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
