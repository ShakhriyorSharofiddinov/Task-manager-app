import 'package:flutter/material.dart';
import 'package:task_manager/screens/home/home.dart';
import 'package:task_manager/screens/login/components/outline_b.dart';
import 'package:task_manager/screens/login/login.dart';

import '../../core/constants/colors.dart';
import 'components/my_button.dart';
import 'components/my_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool showColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      appBar: AppBar(
        backgroundColor: kdark,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const LogInScreen()),
                    (route) => false);
          },
          splashRadius: 24,
          iconSize: 30,
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Align(alignment:Alignment.topLeft,child: Text("Register",style: TextStyle(color: kwhite, fontSize: 32),)),

                const SizedBox(height: 20),

                /// email text-field
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Username",
                      style: TextStyle(color: kwhite, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MyTextField(
                      controller: emailController,
                      hintText: 'Enter your Username',
                      obscureText: false,
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                /// password text-field
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Password",
                      style: TextStyle(color: kwhite, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      style: const TextStyle(color: kwhite),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: kgrey),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: kgrey),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          fillColor: kgrey.withOpacity(0.1),
                          isDense: true,
                          filled: true,
                          hintText: '* * * * * * * *',
                          hintStyle: TextStyle(color: kgrey.withOpacity(0.5))),
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                /// confirm password text-field
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Confirm Password",
                      style: TextStyle(color: kwhite, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          if (value.length >= 6 && value == passwordController.text) {
                            showColor = true;
                          } else {
                            showColor = false;
                          }
                        });
                      },
                      controller: confirmPasswordController,
                      obscureText: true,
                      style: const TextStyle(color: kwhite),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: kgrey),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: kgrey),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          fillColor: kgrey.withOpacity(0.1),
                          isDense: true,
                          filled: true,
                          hintText: '* * * * * * * *',
                          hintStyle: TextStyle(color: kgrey.withOpacity(0.5))),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                /// sign in button
                MyButton(
                  onTap: showColor
                      ? () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const LogInScreen()),
                            (route) => false);
                  }
                      : () {},
                  text: "Register",
                  showColor: showColor,
                ),

                const SizedBox(height: 20),

                /// or continue with
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 0.3,
                        color: kwhite,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or',
                        style: TextStyle(color: kwhite),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.3,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),


                MyOutlineButton(function: (){},image: "assets/intro/google.png", text: "Login with Google"),
                const SizedBox(
                  height: 10,
                ),
                MyOutlineButton(function: (){},image: "assets/intro/apple.png", text: "Login with Apple"),

                const SizedBox(height: 30),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(color: kgrey),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (_) => const LogInScreen()),
                                (route) => false);
                      },
                      style: TextButton.styleFrom(foregroundColor: kgrey),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: kwhite),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
