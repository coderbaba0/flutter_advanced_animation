import 'package:flutter/material.dart';

class AnimatedPaddingpage extends StatefulWidget {
  const AnimatedPaddingpage({super.key});

  @override
  State<AnimatedPaddingpage> createState() => _AnimatedPaddingpageState();
}

class _AnimatedPaddingpageState extends State<AnimatedPaddingpage> {
  bool temp = false;

  List<String> myList = [
    "assets/images/cheese.png",
    "assets/images/dog.png",
    "assets/images/jerry.png",
    "assets/images/tom.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Padding",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: myList.length,
          itemBuilder: (context, index) {
            final eachItem = myList[index];
            return AnimatedPadding(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.decelerate,
              padding: temp == true
                  ? const EdgeInsets.all(8)
                  : const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset(eachItem),
              ),
            );
          },
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
