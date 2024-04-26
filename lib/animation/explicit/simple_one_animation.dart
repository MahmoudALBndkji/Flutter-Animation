import 'package:flutter/material.dart';

class SimpleOneAnimation extends StatefulWidget {
  const SimpleOneAnimation({super.key});

  @override
  State<SimpleOneAnimation> createState() => _SimpleOneAnimationState();
}

class _SimpleOneAnimationState extends State<SimpleOneAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
      lowerBound: 100,
      upperBound: 300,
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explicit Animation"),
      ),
      body: Container(
        child: InkWell(
          // ? For Play Animation
          onTap: () => animationController.forward(),
          child: AnimatedBuilder(
            animation: animationController,
            builder: (context, child) => Container(
              width: animationController.value,
              height: animationController.value,
              color: Colors.red,
              child: Text(
                "This is Explicit Animation",
                style: TextStyle(
                  fontSize: animationController.value / 10,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
