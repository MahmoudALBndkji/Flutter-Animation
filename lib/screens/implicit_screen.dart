import 'package:flutter/material.dart';
import 'package:flutter_animation/animation/implicit/animated_align.dart';
import 'package:flutter_animation/animation/implicit/animated_container.dart';
import 'package:flutter_animation/animation/implicit/animated_default_text_style.dart';
import 'package:flutter_animation/animation/implicit/animated_opacity.dart';
import 'package:flutter_animation/animation/implicit/animated_padding.dart';
import 'package:flutter_animation/animation/implicit/animated_physical_model.dart';
import 'package:flutter_animation/animation/implicit/animated_position.dart';
import 'package:flutter_animation/animation/implicit/animated_size.dart';
import 'package:flutter_animation/animation/implicit/tween_animation_builder.dart';
import 'package:flutter_animation/widgets/custom_text_button.dart';
import 'package:flutter_animation/widgets/navigation.dart';

class ImplicitScreen extends StatelessWidget {
  const ImplicitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      text: 'Implicit Animation',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const AnimatedAlignAnimation()),
                  buttonText: "Animated Align",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const AnimatedContainerAnimation()),
                  buttonText: "Animated Container",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () => navigateTo(
                      context, const AnimatedDefaultTextStyleAnimation()),
                  buttonText: "Animated Default Text Style",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const AnimatedOpacityAnimation()),
                  buttonText: "Animated Opacity",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const AnimatedPaddingAnimation()),
                  buttonText: "Animated Padding",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () => navigateTo(
                      context, const AnimatedPhysicalModelAnimation()),
                  buttonText: "Animated Physical Model",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const AnimatedPositionAnimation()),
                  buttonText: "Animated Position",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const AnimatedSizeAnimation()),
                  buttonText: "Animated Size",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const TweenAnimationBuilderWidget()),
                  buttonText: "Tween Animation Builder",
                  icon: Icons.animation_outlined,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
