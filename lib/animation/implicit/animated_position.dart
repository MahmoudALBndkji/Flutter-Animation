import 'package:flutter/material.dart';

class AnimatedPositionAnimation extends StatefulWidget {
  const AnimatedPositionAnimation({super.key});

  @override
  State<AnimatedPositionAnimation> createState() =>
      _AnimatedPositionAnimationState();
}

class _AnimatedPositionAnimationState extends State<AnimatedPositionAnimation> {
  double startDistance = 0.0;
  double topDistance = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Position"),
      ),
      body: InkWell(
        onTap: () {
          startDistance = 200.0;
          topDistance = 200.0;
          setState(() {});
        },
        child: Stack(
          children: [
            Container(
              color: Colors.red,
              height: 600.0,
            ),
            AnimatedPositionedDirectional(
              // * If You Want Show All Curves
              // * [https://api.flutter.dev/flutter/animation/Curves-class.html]
              curve: Curves.linearToEaseOut,
              duration: const Duration(seconds: 3),
              start: startDistance,
              top: topDistance,
              child: Container(
                color: Colors.green,
                height: 200.0,
                width: 200.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
