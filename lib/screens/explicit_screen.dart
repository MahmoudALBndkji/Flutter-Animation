import 'package:flutter/material.dart';
import 'package:flutter_animation/animation/explicit/align_transition_animation.dart';
import 'package:flutter_animation/animation/explicit/bouncing_with_scaling_animation.dart';
import 'package:flutter_animation/animation/explicit/simple_one_animation.dart';
import 'package:flutter_animation/screens/add_item_to_listview_animation.dart';
import 'package:flutter_animation/screens/ball_screen_animation.dart';
import 'package:flutter_animation/screens/listview_screen.dart';
import 'package:flutter_animation/widgets/custom_text_button.dart';
import 'package:flutter_animation/widgets/navigation.dart';

class ExplicitScreen extends StatelessWidget {
  const ExplicitScreen({super.key});

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
                      text: 'Explicit Animation',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const BallLoadingAnimation()),
                  buttonText: "Ball animation",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () => navigateTo(context, const ListViewScreen()),
                  buttonText: "ListView animation",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const AlignTransitionAnimation()),
                  buttonText: "Align Transition Animation",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const SimpleOneAnimation()),
                  buttonText: "Explicit Animation Example (1)",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const AnimationListView()),
                  buttonText: "add item to ListView animation",
                  icon: Icons.animation_outlined,
                ),
                const SizedBox(height: 20.0),
                customTextButton(
                  function: () =>
                      navigateTo(context, const BouncingWithScalingAnimation()),
                  buttonText: "Bouncing With Scaling Animation",
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
