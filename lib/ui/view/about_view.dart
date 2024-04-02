import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'ABOUT',
            style: GoogleFonts.abel(
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
