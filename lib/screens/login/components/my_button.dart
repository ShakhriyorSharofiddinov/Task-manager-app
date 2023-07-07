import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final bool showColor;

  const MyButton({super.key, required this.onTap,required this.text, required this.showColor});


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      color: showColor ? kpink : kpink.withOpacity(0.3),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: showColor? kwhite : kgrey,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
