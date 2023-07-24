import 'package:flutter/material.dart';

class AnimatedPhysicalModelPage extends StatefulWidget {
  const AnimatedPhysicalModelPage({super.key});

  @override
  State<AnimatedPhysicalModelPage> createState() =>
      _AnimatedPhysicalModelPageState();
}

class _AnimatedPhysicalModelPageState extends State<AnimatedPhysicalModelPage> {
  bool temp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Physical Model",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedPhysicalModel(
          shape: temp == true ? BoxShape.circle : BoxShape.rectangle,
          elevation: temp == false ? 50 : 0,
          shadowColor: temp == true ? Colors.blueGrey : Colors.blueGrey,
          borderRadius: BorderRadius.circular(35),
          color: Colors.white,
          duration: const Duration(seconds: 1),
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: AnimatedContainer(
              duration: const Duration(seconds: 2),
              height: temp == false ? 200 : 100,
              width: temp == false ? 200 : 100,
              child: Image.asset(
                "assets/images/jerry.png",
              ),
            ),
          ),
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
