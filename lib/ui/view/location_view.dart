import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'LOCATION',
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
