import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLogo extends StatelessWidget {
  final double fontSize;
  final Color? color;

  const AppLogo({
    super.key,
    required this.fontSize,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'AhamAI',
      style: GoogleFonts.raleway(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: color ?? Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
