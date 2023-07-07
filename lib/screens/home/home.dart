import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home",),
        leading: const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Icon(
            Icons.menu,
            size: 24,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(
              Icons.account_circle,
              size: 40,
            ),
          ),
        ],
      ),
      body: myBody(),
    );
  }

  Widget myBody(){
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage("assets/home/nodata.png"),height: 220,),
        Center(
          child: SizedBox(
            width: 310,
            height: 110,
            child: Column(
              children: [
                Text(
                  "What do you want to do today?",
                  style: TextStyle(
                    fontSize: 20,
                    color: kwhite,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Tap + to add your tasks",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14, color: kwhite),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
