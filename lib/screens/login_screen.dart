// File: lib/screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:headway/constants/theme_colors.dart';
import 'package:headway/app/mobile/auth_services.dart';
import 'package:headway/screens/home_page.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  bool isLoading = false;

  Future<void> login() async {
    setState(() => isLoading = true);

    try {
      await authService.value.signIn(
        email: controllerEmail.text.trim(),
        password: controllerPassword.text.trim(),
      );

      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login failed: ${e.toString()}")),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
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
                TextField(
                  controller: controllerEmail,
                  style: const TextStyle(color: kWhiteColor),
                  decoration: const InputDecoration(
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
                TextField(
                  controller: controllerPassword,
                  obscureText: true,
                  style: const TextStyle(color: kWhiteColor),
                  decoration: const InputDecoration(
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
                  onPressed: isLoading ? null : login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                  ),
                  child: isLoading
                      ? const CircularProgressIndicator(color: kWhiteColor)
                      : const Text(
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignupScreen()));
                      },
                      child: const Text('Sign up',
                          style: TextStyle(color: kPrimaryColor)),
                    )
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
