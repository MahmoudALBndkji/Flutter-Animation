import 'package:flutter/material.dart';

class BallLoadingAnimation extends StatefulWidget {
  const BallLoadingAnimation({super.key});

  @override
  State<BallLoadingAnimation> createState() => _BallLoadingAnimationState();
}

class _BallLoadingAnimationState extends State<BallLoadingAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _boolanimationcontroller =
      AnimationController(duration: const Duration(seconds: 2), vsync: this)
        ..repeat(reverse: true);

  @override
  void dispose() {
    _boolanimationcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 100;
    const double bigLogo = 200;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final Size biggest = constraints.biggest;
          return Stack(
            children: [
              PositionedTransition(
                rect: RelativeRectTween(
                        begin: RelativeRect.fromSize(
                            Rect.fromLTWH(biggest.width / 2 - smallLogo / 2, 0,
                                smallLogo, smallLogo),
                            biggest),
                        end: RelativeRect.fromSize(
                            Rect.fromLTWH(biggest.width / 2 - bigLogo / 2,
                                biggest.height - bigLogo, bigLogo, bigLogo),
                            biggest))
                    .animate(CurvedAnimation(
                        parent: _boolanimationcontroller,
                        curve: Curves.slowMiddle)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amberAccent),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
