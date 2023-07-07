import 'package:flutter/material.dart';
import 'package:task_manager/screens/login/login.dart';
import 'package:task_manager/screens/login/register.dart';

import '../../core/constants/colors.dart';

class LogInWelcomeScreen extends StatelessWidget {
  const LogInWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Center(
              child: SizedBox(
                width: 310,
                height: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Welcome to UpTodo",
                      style: TextStyle(
                        fontSize: 34,
                        color: kwhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Please login to your account or create new account to continue",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, color: kwhite.withOpacity(0.7)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 6,
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 44),
                      backgroundColor: kpink),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const LogInScreen()));
                  },
                  child: const Text("LOGIN"),
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const RegisterScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 44),
                      foregroundColor: kgrey,
                      side: const BorderSide(
                        color: kpink,
                      )),
                  child: const Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(color: kwhite),
                  ),
                )
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
