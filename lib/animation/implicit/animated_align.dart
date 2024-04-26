import 'package:flutter/material.dart';

class AnimatedAlignAnimation extends StatefulWidget {
  const AnimatedAlignAnimation({super.key});

  @override
  State<AnimatedAlignAnimation> createState() => _AnimatedAlignAnimationState();
}

class _AnimatedAlignAnimationState extends State<AnimatedAlignAnimation> {
  Alignment myAlignment = Alignment.topLeft;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align"),
      ),
      body: Container(
        child: InkWell(
          onTap: () {
            myAlignment = Alignment.bottomRight;
            setState(() {});
          },
          child: AnimatedAlign(
            alignment: myAlignment,
            // * If You Want Show All Curves
            // * [https://api.flutter.dev/flutter/animation/Curves-class.html]
            curve: Curves.linearToEaseOut,
            duration: const Duration(seconds: 2),
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
