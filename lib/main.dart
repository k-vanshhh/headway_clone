import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(
        pageNumber: 0,
      ),
    );
  }
}

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
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 500,
              width: 500,
            ),
            Row(
              children: [
                for (int i = 0; i <= 3; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                        width: 20.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: widget.pageNumber == i
                              ? Colors.blue
                              : Colors.grey[850],
                        ),
                        child: Center(
                          child: Text(
                            "$i",
                            style: const TextStyle(
                                fontSize: 10.0, color: Colors.white),
                          ),
                        )),
                  ),
              ],
            ),
            Text(bigText[widget.pageNumber],
                key: ValueKey<String>(bigText[widget.pageNumber]),
                style: const TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(paraText[widget.pageNumber],
                key: ValueKey<String>(paraText[widget.pageNumber]),
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                )),
            const Spacer(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.blue),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)))),
                      onPressed: () {
                        setState(() {
                          widget.pageNumber = (widget.pageNumber + 1) % 4;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                            child: Text('Continue',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))),
                      )),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        )),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Log in',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.blue,
                          )),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
