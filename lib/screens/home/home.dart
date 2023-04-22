import 'package:flutter/material.dart';
import 'package:task_manager/widgets/task_card.dart';
import 'package:task_manager/widgets/task_list.dart';
import 'package:task_manager/widgets/text_style.dart';

import '../../Constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    double heightSize = MediaQuery.of(context).size.height;
    return
      Container(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 10, bottom: 20),
              color: ColorConstants.BACKGROUND_COLOR,
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textStyle("Hello Shakhriyor!", 26, ColorConstants.TEXT_COLOR, FontWeight.bold),
                      textStyle("Have a nice day.", 16, ColorConstants.ICON_BG_COLOR, FontWeight.normal)
                    ],
                  ),
                  const SizedBox(height: 20),
                  TabBar(
                    isScrollable: true,
                    labelColor: ColorConstants.TEXT_COLOR,
                    unselectedLabelColor: ColorConstants.ICON_BG_COLOR,
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    controller: tabController,
                    tabs: const [
                      Tab(text: "My tasks",),
                      Tab(text: "In-progress",),
                      Tab(text: "Completed",)
                    ],
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 250,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal, itemBuilder: (BuildContext context, int index) {
                          return TaskCard(taskName: "Front-End Development",index: index, date: "October 20, 2023",);
                        },
                        ),
                        ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal, itemBuilder: (BuildContext context, int index) {
                          return TaskCard(taskName: "Front-End Development",index: index, date: "October 20, 2023",);
                        },
                        ),
                        ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal, itemBuilder: (BuildContext context, int index) {
                          return TaskCard(taskName: "Front-End Development",index: index, date: "October 20, 2023",);
                        },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  textStyle("Progress", 20, ColorConstants.TEXT_COLOR, FontWeight.bold),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.maxFinite,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.vertical, itemBuilder: (BuildContext context, int index) {
                      return taskList("Design Changes","2 day ago");
                    }),
                  )
                ],
              ),
            );
  }
}
