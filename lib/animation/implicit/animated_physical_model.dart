import 'package:flutter/material.dart';

class AnimatedPhysicalModelAnimation extends StatefulWidget {
  const AnimatedPhysicalModelAnimation({super.key});

  @override
  State<AnimatedPhysicalModelAnimation> createState() =>
      _AnimatedPhysicalModelAnimationState();
}

class _AnimatedPhysicalModelAnimationState
    extends State<AnimatedPhysicalModelAnimation> {
  double myElevation = 0.0;
  Color myColor = Colors.red;
  Color myShadowColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Physical Model"),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              myColor = Colors.green;
              myShadowColor = Colors.black;
              myElevation = 20.0;
              setState(() {});
            },
            child: AnimatedPhysicalModel(
              // * If You Want Show All Curves
              // * [https://api.flutter.dev/flutter/animation/Curves-class.html]
              curve: Curves.linearToEaseOut,
              color: myColor,
              elevation: myElevation,
              shadowColor: myColor,
              shape: BoxShape.circle,
              duration: const Duration(seconds: 3),
              child: Container(
                height: 400.0,
                alignment: Alignment.center,
                child: const Text("Mahmoud"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
