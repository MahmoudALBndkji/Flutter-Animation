import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedRandomContainer extends StatefulWidget {
  const AnimatedRandomContainer({super.key});

  @override
  State<AnimatedRandomContainer> createState() =>
      _AnimatedRandomContainerState();
}

class _AnimatedRandomContainerState extends State<AnimatedRandomContainer> {
  late Timer _timer;
  double width = 200.0;
  double height = 200.0;
  double br = 0.0;
  Color colorContainer = Colors.red;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        Random random = Random();
        width = random.nextInt(300).toDouble() + 50;
        height = random.nextInt(300).toDouble() + 50;
        br = random.nextInt(100).toDouble();
        colorContainer = Color.fromRGBO(
            random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Random Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          width: width,
          height: height,
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
            color: colorContainer,
            borderRadius: BorderRadius.circular(br),
          ),
        ),
      ),
      // ?  If You Need Change Shape By Click
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       Random random = Random();
      //       width = random.nextInt(300).toDouble();
      //       height = random.nextInt(300).toDouble();
      //       br = random.nextInt(100).toDouble();
      //       colorContainer = Color.fromRGBO(random.nextInt(256),
      //           random.nextInt(256), random.nextInt(256), 1);
      //     });
      //   },
      //   child: const Icon(Icons.play_arrow),
      // ),
    );
  }
}
