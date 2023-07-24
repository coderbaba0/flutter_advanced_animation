
import 'package:flutter/material.dart';

import '../../components/button_widget.dart';
import '../explicit_animations/positioned_transition.dart';
import '../implicit_animations/animated_align/animated_align_page.dart';
import '../implicit_animations/animated_container/animated_container.dart';
import '../implicit_animations/animated_cross_fade/animated_cross_fade.dart';
import '../implicit_animations/animated_default_text_style/animated_default_text_style.dart';
import '../implicit_animations/animated_list/animated_list.dart';
import '../implicit_animations/animated_opacity/animated_opacity.dart';
import '../implicit_animations/animated_padding/animated_padding.dart';
import '../implicit_animations/animated_physical_model/animated_physical_model.dart';
import '../implicit_animations/animated_positioned/animated_positioned.dart';
import '../implicit_animations/animated_positioned_directional.dart/animated_positioned_directional.dart';
import '../implicit_animations/animated_switcher/animated_switcher.dart';
class HomePage extends StatelessWidget
{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Flutter Animations"),
      ),
      body: Container(
        color: Colors.orange,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              children: [
                ButtonWidget(
                  buttonName: "Animated Align",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedAlignPage(),
                    ));
                  },
                ),
                ButtonWidget(
                  buttonName: "Animated Container",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedContainerPage(),
                    ));
                  },
                ),
                ButtonWidget(
                  buttonName: "Animated Default Text Style",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedDefaultTextStylePage(),
                    ));
                  },
                ),
                ButtonWidget(
                  buttonName: "Animated Opacity",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedOpacityPage(),
                    ));
                  },
                ),
                ButtonWidget(
                  buttonName: "Animated Padding",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedPaddingpage(),
                    ));
                  },
                ),
                ButtonWidget(
                  buttonName: "Animated Physical Model",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedPhysicalModelPage(),
                    ));
                  },
                ),
                ButtonWidget(
                  buttonName: "Animated Positioned",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedPositionedPage(),
                    ));
                  },
                ),
                ButtonWidget(
                  buttonName: "Animated Positioned Directional",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const AnimatedPositionedDirectionalPage(),
                    ));
                  },
                ),
                ButtonWidget(
                  buttonName: "Animated Cross Fade",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedCrossFadePage(),
                    ));
                  },
                ),
                ButtonWidget(
                  buttonName: "Animated Switcher",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedSwitcherPage(),
                    ));
                  },
                ),
                ButtonWidget(
                  buttonName: "Animated List",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedListPage(),
                    ));
                  },
                ),
                ButtonWidget(
                  buttonName: "Positioned Transition",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PositionedTransitionPage(),
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
