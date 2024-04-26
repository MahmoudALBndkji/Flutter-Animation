
import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/explicit_screen.dart';
import 'package:flutter_animation/screens/implicit_screen.dart';
import 'package:flutter_animation/widgets/custom_text_button.dart';
import 'package:flutter_animation/widgets/navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 3.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff4482EE),
                          Color(0xff34AB56),
                        ],
                      ),
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'Flutter Animation',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  customTextButton(
                    function: () =>
                        navigateTo(context, const ImplicitScreen()),
                    buttonText: "Implict Animation",
                    icon: Icons.animation_outlined,
                  ),
                  const SizedBox(height: 20.0),
                  customTextButton(
                    function: () =>
                        navigateTo(context, const ExplicitScreen()),
                    buttonText: "Explicit Animation",
                    icon: Icons.animation_outlined,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
