import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/home_screen.dart';

class SplashAnimationSliderState extends StatefulWidget {
  const SplashAnimationSliderState({super.key});

  @override
  State<SplashAnimationSliderState> createState() =>
      _SplashAnimationSliderStateState();
}

class _SplashAnimationSliderStateState extends State<SplashAnimationSliderState>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimation =
      Tween<Offset>(begin: Offset.zero, end: const Offset(0, 1.5)).animate(
    CurvedAnimation(parent: _controller, curve: Curves.elasticIn),
  );

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
    );
    return Center(
      child: SlideTransition(
        position: _offsetAnimation,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: FlutterLogo(
            size: 150.0,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
