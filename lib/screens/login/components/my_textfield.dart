import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      style: const TextStyle(color: kwhite),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: kgrey
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: kgrey
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          fillColor: kgrey.withOpacity(0.1),
          isDense: true,
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: kgrey.withOpacity(0.5))),
    );
  }
}
