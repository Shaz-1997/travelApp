import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  const FadeAnimation(this.delay,   this.child);

  @override
  Widget build(BuildContext context) {

    return PlayAnimationBuilder(
      tween: Tween<double>(begin: 50.0, end: 200.0),
      duration: const Duration(seconds: 5),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Container(
          width: value,
          height: value,
          color: Colors.green,
          child: child,
        );
      },
    );
  }
}
