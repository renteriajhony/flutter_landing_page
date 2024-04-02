import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingView extends StatelessWidget {
  const PricingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'PRICING',
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
