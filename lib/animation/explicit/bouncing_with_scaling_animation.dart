import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/home_screen.dart';
import 'package:flutter_animation/widgets/navigation.dart';

class BouncingWithScalingAnimation extends StatefulWidget {
  const BouncingWithScalingAnimation({super.key});

  @override
  State<BouncingWithScalingAnimation> createState() =>
      _BouncingWithScalingAnimationState();
}

class _BouncingWithScalingAnimationState
    extends State<BouncingWithScalingAnimation>
    with SingleTickerProviderStateMixin {
  double ballY = 0;
  double widthVal = 50;
  double heightVal = 50;
  double bottomVal = 500;
  bool add = false;
  bool showShadow = false;
  int times = 0;
  bool showComic = false;
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..addListener(
            () {
              if (add) {
                ballY += 15;
              } else {
                ballY -= 15;
              }
              if (ballY <= -200) {
                times += 1;
                add = true;
                showShadow = true;
              }
              if (ballY >= 0) {
                add = false;
                showShadow = false;
                widthVal += 50;
                heightVal += 50;
                bottomVal -= 200;
              }
              if (times == 3) {
                showShadow = false;
                widthVal = MediaQuery.sizeOf(context).width;
                heightVal = MediaQuery.sizeOf(context).height;
                Timer(const Duration(milliseconds: 300), () {
                  setState(() {
                    showComic = true;
                  });
                });
                _controller.stop();
                Navigator.pushAndRemoveUntil(
                  context,
                  SizeTransitionToTop(
                    const HomeScreen(),
                  ),
                  (route) => false,
                );
              }
              setState(() {});
            },
          );
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              bottom: bottomVal,
              duration: const Duration(milliseconds: 600),
              child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(0, ballY),
                    child: AnimatedScale(
                      duration: const Duration(milliseconds: 200),
                      scale: times == 3 ? 5 : 1,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: widthVal,
                        height: heightVal,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                      ),
                    ),
                  ),
                  if (showShadow)
                    Container(
                      width: 50,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.2),
                          borderRadius: BorderRadius.circular(100)),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
