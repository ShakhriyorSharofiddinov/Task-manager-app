import 'package:flutter/material.dart';
import 'package:task_manager/Constants/constants.dart';
import 'package:task_manager/widgets/text_style.dart';

class TaskCard extends StatelessWidget {
  final String taskName;
  final int index;
  final String date;
  const TaskCard({required this.taskName, required this.index, required this.date,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.CARD_COLOR,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(right: 30, top: 15),
      width: 220,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  height: 40,
                  width: 40,
                  child: Image(
                    image: AssetImage("assets/home/task_image.png"),
                  ),
                ),
                const SizedBox(width: 10),
                textStyle("Project ", 16, Colors.white, FontWeight.bold),
                textStyle((index+1).toString(), 16, Colors.white, FontWeight.bold),
              ],
            ),
            textStyle(
                taskName.toString(), 24, Colors.white, FontWeight.normal),
            Row(
              children: [
                textStyle(date.toString(), 16, Colors.white, FontWeight.normal),
              ],
            )
          ],
        ),
      ),
    );
  }
}
