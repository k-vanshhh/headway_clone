import 'package:flutter/material.dart';
import 'package:headway/constants/theme_colors.dart';
import 'package:headway/screens/home_page.dart';
import 'package:headway/screens/login_screen.dart';

final List<String> bigText = [
  '#1 most \ndownloaded book \nsummary app',
  'Books in 15 \nminutes',
  'Read and listen \nanywhere',
  'Maintain a \nlearning habit'
];

final List<String> paraText = [
  'Achieve your goals by listening and reading the world\'s best ideas',
  'We read the best books, highlight key ideas and insights, and create summaries for you',
  'Download content to read, listen, or do both at the same time offline',
  'Set your most ambitious goals and grow by day'
];

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({super.key, required this.pageNumber});
  int pageNumber;

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 400, width: double.infinity),
            Row(
              children: List.generate(4, (i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    width: 20.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.pageNumber == i
                          ? kPrimaryColor
                          : kInactiveDotColor,
                    ),
                    child: Center(
                      child: Text(
                        "${i + 1}",
                        style: const TextStyle(
                          fontSize: 10.0,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
            Text(
              bigText[widget.pageNumber],
              key: ValueKey<String>(bigText[widget.pageNumber]),
              style: const TextStyle(
                fontSize: 30.0,
                color: kWhiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              paraText[widget.pageNumber],
              key: ValueKey<String>(paraText[widget.pageNumber]),
              style: const TextStyle(
                fontSize: 15.0,
                color: kWhiteColor,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.all(12.0),
                ),
                onPressed: () {
                  setState(() {
                    if (widget.pageNumber == 3) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    } else {
                      widget.pageNumber++;
                    }
                  });
                },
                child: const Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: kWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: kWhiteColor,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                    // TODO: Navigate to login screen
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
