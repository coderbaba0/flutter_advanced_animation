import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({super.key});

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  int jerryAlignment = 1;
  int tomAlignment = 0;

  Alignment getNextJerryAlignment(int jeryyAlignment) {
    List<Alignment> li = [
      Alignment.topCenter,
      Alignment.centerRight,
      Alignment.topLeft,
      Alignment.bottomCenter,
      Alignment.topRight,
      Alignment.centerLeft,
      Alignment.center,
      Alignment.bottomLeft,
      Alignment.bottomRight,
    ];

    return li[jeryyAlignment];
  }

  Alignment getNextTomAlignment(int tomAlignment) {
    List<Alignment> li = [
      Alignment.topCenter,
      Alignment.centerRight,
      Alignment.topLeft,
      Alignment.bottomCenter,
      Alignment.topRight,
      Alignment.centerLeft,
      Alignment.center,
      Alignment.bottomLeft,
      Alignment.bottomRight,
    ];

    return li[tomAlignment];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Align",
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getNextJerryAlignment(jerryAlignment),
            duration: const Duration(seconds: 1),
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/images/jerry.png"),
            ),
          ),
          AnimatedAlign(
            alignment: getNextTomAlignment(tomAlignment),
            duration: const Duration(seconds: 1),
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/images/tom.png"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (jerryAlignment < 8) {
              jerryAlignment++;
              tomAlignment = jerryAlignment - 1;
            } else {
              jerryAlignment = 1;
              tomAlignment = 0;
            }
          });
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
