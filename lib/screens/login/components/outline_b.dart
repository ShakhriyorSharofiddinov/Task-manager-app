import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class MyOutlineButton extends StatelessWidget {
  final Function()? function;
  final String image;
  final String text;
  const MyOutlineButton({required this.function,required this.image, required this.text ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: function,
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, 44),
          foregroundColor: kgrey,
          side: const BorderSide(
            color: kpink,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(image),height: 16,),
            const SizedBox(width: 10,),
            Text(text, style: TextStyle(color: kwhite),),
          ],
        )
    );
  }
}

