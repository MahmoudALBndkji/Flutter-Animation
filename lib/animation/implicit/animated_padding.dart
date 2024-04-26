import 'package:flutter/material.dart';

class AnimatedPaddingAnimation extends StatefulWidget {
  const AnimatedPaddingAnimation({super.key});

  @override
  State<AnimatedPaddingAnimation> createState() =>
      _AnimatedPaddingAnimationState();
}

class _AnimatedPaddingAnimationState extends State<AnimatedPaddingAnimation> {
  double myPadding = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding"),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              myPadding = 60.0;
              setState(() {});
            },
            child: Container(
              color: Colors.red,
              height: 200.0,
              child: AnimatedPadding(
                // * If You Want Show All Curves
                // * [https://api.flutter.dev/flutter/animation/Curves-class.html]
                curve: Curves.linearToEaseOut,
                padding: EdgeInsets.all(myPadding),
                duration: const Duration(seconds: 2),
                child: Container(
                  color: Colors.green,
                  height: 200.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
