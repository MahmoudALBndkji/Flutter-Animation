import 'package:flutter/material.dart';

class AlignTransitionAnimation extends StatefulWidget {
  const AlignTransitionAnimation({super.key});

  @override
  State<AlignTransitionAnimation> createState() =>
      _AlignTransitionAnimationState();
}

class _AlignTransitionAnimationState extends State<AlignTransitionAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<AlignmentGeometry> alignController;
  late Animation<double> rotateController;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    alignController = Tween<AlignmentGeometry>(
      begin: AlignmentDirectional.centerStart,
      end: AlignmentDirectional.centerEnd,
    ).animate(controller);
    rotateController = Tween<double>(begin: 0.0, end: 3.0).animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Align Transition"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AlignTransition(
              alignment: alignController,
              child: RotationTransition(
                turns: rotateController,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                  ),
                  height: 100.0,
                  width: 100.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
