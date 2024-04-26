import 'package:flutter/material.dart';

class TransformScreen extends StatelessWidget {
  const TransformScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transform Animation"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              duration: const Duration(seconds: 3),
              // ? Tween For Rotate
              // tween: Tween(begin: 0.0, end: 2 * 3.14),
              // ? Tween For Translate
              // tween: Tween(begin: 10.0, end: 80.0),
              // ? Tween For Scale
              tween: Tween(begin: 0.5, end: 1.0),
              builder: (context, value, child) =>
                  // ? Scale
                  Transform.scale(
                scale: value, // => original Size
                // scale: 1, // => original Size
                // scale: 2, // => Double original Size
                // => Origin Explain The Position For Start Element
                origin: const Offset(100, 100),
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 200.0,
                    width: 200.0,
                    color: Colors.red,
                    child: const Text("Container"),
                  ),
                ),
              ),
              // ? Translate
              // Transform.translate(
              //   offset: const Offset(0, 0),
              //   child: Center(
              //     child: Container(
              //       alignment: Alignment.center,
              //       height: 200.0,
              //       width: 200.0,
              //       color: Colors.red,
              //       child: const Text("Container"),
              //     ),
              //   ),
              // ),
              // ? Rotate
              // Transform.rotate(
              //   // angle: 3.14, // => 90 degree
              //   angle: value,
              //   // angle: 3.14 / 2, // => 45 degree
              //   child: Center(
              //     child: Container(
              //       alignment: Alignment.center,
              //       height: 200.0,
              //       width: 200.0,
              //       color: Colors.red,
              //       child: const Text("Container"),
              //     ),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
