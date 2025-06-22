// File: lib/screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:headway/constants/theme_colors.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Log In',
              style: TextStyle(
                fontSize: 32,
                color: kWhiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            const TextField(
              style: TextStyle(color: kWhiteColor),
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: kWhiteColor),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kWhiteColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              style: TextStyle(color: kWhiteColor),
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: kWhiteColor),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kWhiteColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // TODO: Handle login
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(color: kWhiteColor, fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don’t have an account?',
                    style: TextStyle(color: kWhiteColor)),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignupScreen()));
                  },
                  child: const Text('Sign up',
                      style: TextStyle(color: kPrimaryColor)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
