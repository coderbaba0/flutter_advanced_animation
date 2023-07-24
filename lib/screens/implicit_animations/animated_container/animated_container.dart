import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool temp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Container",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: temp == false ? 200 : 350,
          width: temp == false ? 200 : 350,
          curve: temp == false ? Curves.easeIn : Curves.easeInOut,
          decoration: BoxDecoration(
            color: temp == false ? Colors.amber : Colors.green,
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Image.asset("assets/images/jerry.png"),
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
