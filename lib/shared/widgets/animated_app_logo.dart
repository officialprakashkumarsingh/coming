import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_logo.dart';

class AnimatedAppLogo extends StatefulWidget {
  const AnimatedAppLogo({super.key});

  @override
  State<AnimatedAppLogo> createState() => _AnimatedAppLogoState();
}

class _AnimatedAppLogoState extends State<AnimatedAppLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<int> _textAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _textAnimation = IntTween(begin: 0, end: 'AhamAI'.length).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _textAnimation,
      builder: (context, child) {
        final text = 'AhamAI'.substring(0, _textAnimation.value);
        return AppLogo(
          text: text,
          fontSize: 48,
        );
      },
    );
  }
}
