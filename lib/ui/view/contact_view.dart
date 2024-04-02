import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'CONTACT',
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
