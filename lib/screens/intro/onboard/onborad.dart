import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager/screens/intro/onboard/page.dart';
import 'package:task_manager/screens/login/welcome.dart';

import '../../../core/constants/colors.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}


class _OnBoardScreenState extends State<OnBoardScreen> {
  int i = 0;
  List<PageClass> listPage = [
    PageClass(
        title: "Manage your tasks",
        subtitle:
            "You can easily manage all of your daily tasks in DoMe for free",
        image: "assets/intro/scrren1.png"),
    PageClass(
        title: "Create daily routine",
        subtitle:
            "In UpTodo you can create your personalized routine to stay productive",
        image: "assets/intro/scrren2.png"),
    PageClass(
        title: "Organise your tasks",
        subtitle:
            "You can organize your daily tasks by adding your tasks into separate categories",
        image: "assets/intro/screen3.png"),
  ];


  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    loadShared();
  }
  Future<void> loadShared() async{
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onboard', isViewed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LogInWelcomeScreen()));
                      },
                      child: const Text(
                        "SKIP",
                        style: TextStyle(color: kgrey, fontSize: 16),
                      ))),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Center(
                  child: Image(
                    fit: BoxFit.cover,
                    height: 270,
                    image: AssetImage(listPage[i].image),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  i == 0 ? myCon(true) : myCon(false),
                  const SizedBox(
                    width: 12,
                  ),
                  i == 1 ? myCon(true) : myCon(false),
                  const SizedBox(
                    width: 12,
                  ),
                  i == 2 ? myCon(true) : myCon(false),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          listPage[i].title,
                          style: const TextStyle(
                            fontSize: 34,
                            color: kwhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          listPage[i].subtitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16, color: kwhite),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        if (i == 0) {
                        } else if (i > 0) {
                          i--;
                          setState(() {});
                        }
                      },
                      child: const Text(
                        "BACK",
                        style: TextStyle(
                          color: kgrey,
                          fontSize: 16,
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        if (i == 2) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => const LogInWelcomeScreen()),
                                  (route) => false);
                        } else if (i < 2) {
                          i++;
                          setState(() {});
                        }
                      },
                      child: i == 2
                          ? myButtonCon(40, 150, "GET STARTED")
                          : myButtonCon(40, 90, "NEXT"))

                ],
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }

  Widget myCon(bool isSelect) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelect ? kpink : kwhite,
      ),
      height: 4,
      width: 30,
    );
  }

  Widget myButtonCon(double height, double width, String text){
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: kpink,
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 16, color: Colors.white),
      ),
    );
  }
}
