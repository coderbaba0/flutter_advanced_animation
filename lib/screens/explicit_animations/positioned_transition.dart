import 'package:flutter/material.dart';

class PositionedTransitionPage extends StatefulWidget {
  const PositionedTransitionPage({super.key});

  @override
  State<PositionedTransitionPage> createState() =>
      _PositionedTransitionPageState();
}

class _PositionedTransitionPageState extends State<PositionedTransitionPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<RelativeRect> jerryAnimation;
  late Animation<RelativeRect> tomAnimation;
  late Animation<RelativeRect> spikeAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    jerryAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(250, 250, 0, 0),
    ).animate(animationController);
    tomAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(150, 150, 0, 0),
    ).animate(animationController);
    spikeAnimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(50, 50, 0, 0),
    ).animate(animationController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // animationController.forward();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Positioned Transition",
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          PositionedTransition(
            rect: spikeAnimation,
            child: Container(
              color: Colors.blueGrey,
              width: 150,
              height: 150,
              child: Image.asset("assets/images/dog.png"),
            ),
          ),
          PositionedTransition(
            rect: tomAnimation,
            child: Container(
              color: Colors.grey,
              width: 150,
              height: 150,
              child: Image.asset("assets/images/tom.png"),
            ),
          ),
          PositionedTransition(
            rect: jerryAnimation,
            child: Container(
              color: Colors.orange,
              width: 150,
              height: 150,
              child: Image.asset("assets/images/jerry.png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      animationController.reset();
                      animationController.forward();
                    },
                    icon: const Icon(Icons.play_arrow_rounded),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      animationController.reverse();
                    },
                    icon: const Icon(Icons.close),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
