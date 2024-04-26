import 'package:flutter/material.dart';

class AnimatedOpacityAnimation extends StatefulWidget {
  const AnimatedOpacityAnimation({super.key});

  @override
  State<AnimatedOpacityAnimation> createState() =>
      _AnimatedOpacityAnimationState();
}

class _AnimatedOpacityAnimationState extends State<AnimatedOpacityAnimation> {
  double op = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity"),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              op = 0.0;
              setState(() {});
            },
            child: Center(
              child: AnimatedOpacity(
                // * If You Want Show All Curves
                // * [https://api.flutter.dev/flutter/animation/Curves-class.html]
                curve: Curves.linearToEaseOut,
                duration: const Duration(seconds: 3),
                opacity: op,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
