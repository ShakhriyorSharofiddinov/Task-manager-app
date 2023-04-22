import 'package:flutter/material.dart';
import 'package:task_manager/Constants/constants.dart';
import 'package:task_manager/widgets/text_style.dart';

Widget taskList(String taskName, String date) {
  return Container(
    margin: const EdgeInsets.only(bottom: 15,),
    height: 80,
    width: double.maxFinite,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 16),
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.CARD_COLOR,
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Image(
                  image: AssetImage("assets/calendar/calendar.png"),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              textStyle(
                  taskName, 16, ColorConstants.TEXT_COLOR, FontWeight.bold),
              textStyle(
                  date, 14, ColorConstants.ICON_BG_COLOR, FontWeight.normal),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            splashColor: Colors.cyan,
            onPressed: (){},
            icon: Icon(
              Icons.delete,
              color: ColorConstants.ICON_BG_COLOR,
              size: 26,
            ),
          ),
        )
      ],
    ),
  );
}
