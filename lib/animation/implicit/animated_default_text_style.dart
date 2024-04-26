import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleAnimation extends StatefulWidget {
  const AnimatedDefaultTextStyleAnimation({super.key});

  @override
  State<AnimatedDefaultTextStyleAnimation> createState() =>
      _AnimatedDefaultTextStyleAnimationState();
}

class _AnimatedDefaultTextStyleAnimationState
    extends State<AnimatedDefaultTextStyleAnimation> {
  double fs = 15.0;
  Color textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Default Text Style"),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              fs = 35.0;
              textColor = Colors.green;
              setState(() {});
            },
            child:  Center(
              child: AnimatedDefaultTextStyle(
                style: TextStyle(fontSize: fs, color: textColor),
                // * If You Want Show All Curves
                // * [https://api.flutter.dev/flutter/animation/Curves-class.html]
                curve: Curves.linearToEaseOut,
                duration: const Duration(seconds: 3),
                child: const Text("Mahmoud"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
