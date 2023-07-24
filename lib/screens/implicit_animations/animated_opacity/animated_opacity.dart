import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({super.key});

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  bool temp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Opacity",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedOpacity(
              curve: Curves.decelerate,
              duration: const Duration(seconds: 1),
              opacity: temp == true ? 1.0 : 0.0,
              child: const Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Tom And Jerry",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            AnimatedOpacity(
              curve: Curves.decelerate,
              duration: const Duration(seconds: 2),
              opacity: temp == true ? 1.0 : 0.0,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.asset("assets/images/tom.png"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AnimatedOpacity(
              curve: Curves.decelerate,
              duration: const Duration(seconds: 3),
              opacity: temp == true ? 1.0 : 0.0,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.asset("assets/images/jerry.png"),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            temp = !temp;
          });
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
