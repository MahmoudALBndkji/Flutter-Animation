import 'package:flutter/material.dart';

class AnimatedContainerAnimation extends StatefulWidget {
  const AnimatedContainerAnimation({super.key});

  @override
  State<AnimatedContainerAnimation> createState() =>
      _AnimatedContainerAnimationState();
}

class _AnimatedContainerAnimationState
    extends State<AnimatedContainerAnimation> {
  double w = 200.0;
  double h = 200.0;
  double br = 0.0;
  Color colorContainer = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              w = 300.0;
              h = 400.0;
              br = 20.0;
              colorContainer = Colors.green;
              setState(() {});
            },
            child: Center(
              child: AnimatedContainer(
                // * If You Want Show All Curves
                // * [https://api.flutter.dev/flutter/animation/Curves-class.html]
                curve: Curves.linearToEaseOut,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(br),
                  color: colorContainer,
                ),
                duration: const Duration(seconds: 3),
                width: w,
                height: h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
