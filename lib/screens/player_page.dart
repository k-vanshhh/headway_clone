import 'package:flutter/material.dart';
import 'package:headway/constants/theme_colors.dart';

class PlayerPage extends StatefulWidget {
  PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
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
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: kInactiveDotColor,
                      border: Border.all(color: Colors.white, width: .5),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildIconButton(icon: Icons.add, index: 1),
                      const SizedBox(width: 10),
                      _buildIconButton(icon: Icons.headphones, index: 0),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height,
              width: size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/images/placeholder.jpg',
                      height: size.height * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      'KEY POINT 1 OUT OF 10',
                      style: kTextTheme.headlineSmall,
                    ),
                  ),
                  Text(
                    'Good habits produce results that multiply',
                    style: kTextTheme.headlineSmall,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('0.0', style: kTextTheme.displaySmall),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: const RoundSliderOverlayShape(),
                          ),
                          child: Expanded(
                            child: Slider(
                              onChanged: (value) {},
                              value: 0.0,
                            ),
                          ),
                        ),
                        Text('0.0', style: kTextTheme.displaySmall),
                      ],
                    ),
                  ),
                  CustomUtilityOptions(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton({required IconData icon, required int index}) {
    final isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.withOpacity(0.6) : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 30,
          color: kWhiteColor,
        ),
      ),
    );
  }
}

class CustomUtilityOptions extends StatelessWidget {
  CustomUtilityOptions({
    super.key,
  });

  BorderRadiusGeometry radius = BorderRadius.circular(20.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            key: const Key('play_previous'),
            onPressed: () {},
            //onSkipToPrevious,
            iconSize: 40.0,
            icon: Icon(Icons.skip_previous_rounded, color: kWhiteColor),
            // color: kWhiteColor,
          ),
          IconButton(
            key: const Key('backward_5'),
            onPressed: () {},
            iconSize: 45.0,
            icon: Icon(
              Icons.replay_5_rounded,
              color: kWhiteColor,
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) =>
                ScaleTransition(scale: animation, child: child),
            child: IconButton(
              key: ValueKey<bool>(false), // Replace with isPlaying if available
              onPressed: () {
                // Toggle play/pause state here
              },
              iconSize: 50.0,
              icon: Icon(
                false
                    ? Icons.pause
                    : Icons.play_arrow_rounded, // Replace with isPlaying
                color: kWhiteColor,
              ),
            ),
          ),
          IconButton(
            key: const Key('forward_10'),
            onPressed: () {},
            iconSize: 45.0,
            icon: Icon(
              Icons.forward_10_rounded,
              color: kWhiteColor,
            ),
          ),
          // ),
          IconButton(
            key: const Key('play_next'),
            onPressed: () {},
            //  onSkipToNext,
            iconSize: 40.0,
            icon: Icon(Icons.skip_next_rounded, color: kWhiteColor),
            // color: color,
          ),
        ],
      ),
    );
  }
}
