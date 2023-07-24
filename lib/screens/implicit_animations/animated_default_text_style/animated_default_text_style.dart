import 'package:flutter/material.dart';

class AnimatedDefaultTextStylePage extends StatefulWidget {
  const AnimatedDefaultTextStylePage({super.key});

  @override
  State<AnimatedDefaultTextStylePage> createState() =>
      _AnimatedDefaultTextStylePageState();
}

class _AnimatedDefaultTextStylePageState
    extends State<AnimatedDefaultTextStylePage> {
  bool temp = false;
  // int fontSize = 25;
  // Color fontColor = Colors.black;
  // FontWeight fontWeight = FontWeight.w200;
  // Curve fontCurve = Curves.bounceIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Default Text Style",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          curve: temp == true ? Curves.bounceIn : Curves.bounceOut,
          style: TextStyle(
            fontSize: temp == true ? 25 : 35,
            color: temp == true ? Colors.black : Colors.purple,
            fontWeight: temp == true ? FontWeight.w400 : FontWeight.w900,
          ),
          duration: const Duration(seconds: 1),
          child: const Text("This is Animated Text"),
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
