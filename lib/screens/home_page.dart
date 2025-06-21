import 'package:flutter/material.dart';
import 'package:headway/constants/theme_colors.dart';
import 'dart:math' as math;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Text(
          'Headway',
          style: kTextTheme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: ListTile(
                tileColor: Colors.amber[800],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                leading: Icon(
                  Icons.double_arrow_sharp,
                  color: Colors.amber,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Container(
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Free daily \nsummary',
                            style: kTextTheme.displayLarge,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    'Get it now',
                                    style: kTextTheme.bodySmall,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: kDefaultIconLightColor,
                                  )
                                ],
                              ))
                        ],
                      ),
                      Transform.rotate(
                        angle: math.pi / 12.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image(
                            image: const AssetImage(
                                'assets/images/placeholder.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Text('You might also like'),
            Text('Summaries based on your ratings'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: ListTile(
                tileColor: Colors.amber[800],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                leading: Icon(
                  Icons.double_arrow_sharp,
                  color: Colors.amber,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: ListTile(
                tileColor: Colors.amber[800],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                leading: Icon(
                  Icons.double_arrow_sharp,
                  color: Colors.amber,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: ListTile(
                tileColor: Colors.amber[800],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                leading: Icon(
                  Icons.double_arrow_sharp,
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kBackgroundColor,
        fixedColor: kBackgroundColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'For you',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Activity',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
