import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLogo extends StatelessWidget {
  final double fontSize;
  final Color? color;
  final String text;

  const AppLogo({
    super.key,
    required this.fontSize,
    this.color,
    this.text = 'AhamAI',
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.quantico(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: color ?? Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
