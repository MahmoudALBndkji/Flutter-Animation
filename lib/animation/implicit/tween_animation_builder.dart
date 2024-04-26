import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  const TweenAnimationBuilderWidget({super.key});

  @override
  State<TweenAnimationBuilderWidget> createState() =>
      _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState
    extends State<TweenAnimationBuilderWidget> {
  double h = 100.0;
  double w = 100.0;
  Color myColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Animation Builder"),
      ),
      body: Container(
        child: InkWell(
          onTap: () {
            myColor = Colors.red;
            h = 300.0;
            setState(() {});
          },
          child: TweenAnimationBuilder(
            duration: const Duration(seconds: 1),
            // * For Height & Width
            tween: Tween(begin: 100.0, end: h),
            // * For Color
            // tween: ColorTween(begin: Colors.green, end: myColor),
            builder: (context, value, child) => Container(
              height: value,
              width: value,
              // color: value,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
