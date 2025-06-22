// File: lib/screens/signup_screen.dart
import 'package:flutter/material.dart';
import 'package:headway/constants/theme_colors.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              'Sign Up',
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
                labelText: 'Full Name',
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
                // TODO: Handle sign-up
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 15),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(color: kWhiteColor, fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?',
                    style: TextStyle(color: kWhiteColor)),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()));
                  },
                  child: const Text('Log in',
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
