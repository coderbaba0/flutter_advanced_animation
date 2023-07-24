import 'package:flutter/material.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  const AnimatedCrossFadePage({super.key});

  @override
  State<AnimatedCrossFadePage> createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  bool isFirstWidgetVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Cross Fade",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isFirstWidgetVisible = !isFirstWidgetVisible;
                });
              },
              child: AnimatedCrossFade(
                firstCurve: Curves.linear,
                secondCurve: Curves.linear,
                firstChild: Container(
                  height: 200,
                  width: 200,
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Image.asset("assets/images/jerry.png"),
                  ),
                ),
                secondChild: Container(
                  height: 200,
                  width: 200,
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Image.asset("assets/images/dog.png"),
                  ),
                ),
                crossFadeState: isFirstWidgetVisible
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 1),
              ),
            ),
            const Text("Click on the Picture"),
          ],
        ),
      ),
    );
  }
}
