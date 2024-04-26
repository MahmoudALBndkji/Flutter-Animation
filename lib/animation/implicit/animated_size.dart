import 'package:flutter/material.dart';

class AnimatedSizeAnimation extends StatefulWidget {
  const AnimatedSizeAnimation({super.key});

  @override
  State<AnimatedSizeAnimation> createState() => _AnimatedSizeAnimationState();
}

class _AnimatedSizeAnimationState extends State<AnimatedSizeAnimation> {
  double w = 100.0;
  double h = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Size"),
      ),
      body: Container(
        child: InkWell(
          onTap: () {
            w = 200.0;
            h = 200.0;
            setState(() {});
          },
          child: AnimatedSize(
            // * If You Want Show All Curves
            // * [https://api.flutter.dev/flutter/animation/Curves-class.html]
            curve: Curves.linearToEaseOut,
            duration: const Duration(seconds: 2),
            child: Container(
              width: w,
              height: h,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
