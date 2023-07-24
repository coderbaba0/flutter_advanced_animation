import 'package:flutter/material.dart';

class AnimatedSwitcherPage extends StatefulWidget {
  const AnimatedSwitcherPage({super.key});

  @override
  State<AnimatedSwitcherPage> createState() => _AnimatedSwitcherPageState();
}

class _AnimatedSwitcherPageState extends State<AnimatedSwitcherPage> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated Switcher",
        ),
        centerTitle: true,
      ),
      body: AnimatedSwitcher(
        switchInCurve: Curves.decelerate,
        duration: const Duration(seconds: 3),
        child: flag == true ? const LoginWidget() : const HomeDemo(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flag = !flag;
          });
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        key: const Key('2'),
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Screen 1"),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Image.asset("assets/images/dog.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeDemo extends StatefulWidget {
  const HomeDemo({super.key});

  @override
  State<HomeDemo> createState() => _HomeDemoState();
}

class _HomeDemoState extends State<HomeDemo> {
  bool isFirstWidgetVisible = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Screen 2"),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            key: const Key('2'),
            onTap: () {},
            child: Container(
              height: 200,
              width: 200,
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Image.asset("assets/images/jerry.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
