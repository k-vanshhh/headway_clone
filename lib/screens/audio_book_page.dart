import 'package:flutter/material.dart';
import 'package:headway/constants/theme_colors.dart';
import 'package:headway/screens/player_page.dart';

class AudioBookPage extends StatelessWidget {
  const AudioBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8),
                    backgroundColor: Colors.black54,
                    foregroundColor: Colors.white,
                    elevation: 2,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(Icons.close),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kInactiveDotColor,
                            foregroundColor: kWhiteColor,
                            textStyle: const TextStyle(fontSize: 18),
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {
                            // TODO: Implement Read functionality
                          },
                          icon: Icon(Icons.add),
                          label: const Text(
                            'Read',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              foregroundColor: kWhiteColor,
                              textStyle: const TextStyle(fontSize: 18),
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => PlayerPage()),
                              );
                            },
                            icon: const Icon(Icons.headphones),
                            label: const Text('Listen'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.6,
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          'assets/images/placeholder.jpg',
                          height: size.height * 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: IconButton(
                                icon: Icon(Icons.share),
                                onPressed: () {
                                  // TODO: Implement share functionality
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: IconButton(
                                icon: Icon(Icons.download),
                                onPressed: () {
                                  // TODO: Implement download functionality
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: IconButton(
                                icon: Icon(Icons.bookmark_border),
                                onPressed: () {
                                  // TODO: Implement save functionality
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Summary', style: kTextTheme.displayMedium),
                Text('Atomic Habits', style: kTextTheme.displayMedium),
                Text('James Clear', style: kTextTheme.displayMedium),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.access_time, color: kWhiteColor, size: 25),
                          SizedBox(width: 4),
                          Text('15 min', style: kTextTheme.displayMedium),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.headset, color: kWhiteColor, size: 25),
                          SizedBox(width: 4),
                          Text('Audio', style: kTextTheme.displayMedium),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star_border, color: kWhiteColor, size: 25),
                          SizedBox(width: 4),
                          Text('4.8', style: kTextTheme.displayMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
