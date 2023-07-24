import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalPage extends StatefulWidget {
  const AnimatedPositionedDirectionalPage({super.key});

  @override
  State<AnimatedPositionedDirectionalPage> createState() =>
      _AnimatedPositionedDirectionalPageState();
}

class _AnimatedPositionedDirectionalPageState
    extends State<AnimatedPositionedDirectionalPage> {
  double left = 0;
  double top = 0;
  // double right = 0;
  // double bottom = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Positioned Directional",
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            AnimatedPositionedDirectional(
              duration: const Duration(seconds: 1),
              start: left,
              top: top,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("assets/images/jerry.png"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (left >= 50) {
                          left -= 50;
                        }
                      });
                    },
                    child: const Icon(Icons.arrow_circle_left_outlined),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (left >= 0 &&
                            left < MediaQuery.of(context).size.width - 120) {
                          left += 50;
                        }
                      });
                    },
                    child: const Icon(Icons.arrow_circle_right_outlined),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (top >= 50) {
                          top -= 50;
                        }
                      });
                    },
                    child: const Icon(Icons.arrow_circle_up),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (top >= 0 &&
                            top < MediaQuery.of(context).size.height - 250) {
                          top += 50;
                        }
                      });
                    },
                    child: const Icon(Icons.arrow_circle_down),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
