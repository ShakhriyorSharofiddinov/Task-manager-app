import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager/screens/login/welcome.dart';

import '../../../core/constants/colors.dart';
import '../onboard/onborad.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int? isViewed;
  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    loadShared();
  }

  Future<void> loadShared() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isViewed = prefs.getInt('onboard');
    print(isViewed);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => isViewed != 0 ? const OnBoardScreen() : const LogInWelcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kdark,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/intro/logo.png"),
              height: 120,
            ),
            SizedBox(height: 12,),
            Text(
              "UpTodo",
              style: TextStyle(
                  color: kwhite, fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
