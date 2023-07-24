import 'package:flutter/material.dart';

class AnimatedPositionedPage extends StatefulWidget {
  const AnimatedPositionedPage({super.key});

  @override
  State<AnimatedPositionedPage> createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  bool temp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Positioned",
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/cheese.png"),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              top: temp == true ? 0 : 0,
              right: temp == true ? MediaQuery.of(context).size.width - 150 : 0,
              child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/jerry.png"),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              top: temp == true ? 0 : 280,
              left: temp == true ? 0 : 0,
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/tom.png"),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              top: temp == false ? MediaQuery.of(context).size.height - 280 : 0,
              right:
                  temp == true ? MediaQuery.of(context).size.width - 150 : 120,
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/dog.png"),
              ),
            ),
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
