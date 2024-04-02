import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuItem extends StatefulWidget {
  const CustomMenuItem({
    super.key,
    required this.text,
    required this.onPressed,
    this.delay = 0,
  });

  final String text;
  final Function onPressed;
  final int delay;

  @override
  State<CustomMenuItem> createState() => _CustomMenuItemState();
}

class _CustomMenuItemState extends State<CustomMenuItem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      from: 10,
      duration: const Duration(milliseconds: 400),
      delay: Duration(milliseconds: widget.delay),
      child: MouseRegion(
        onEnter: (_) => setState(() {
          isHover = true;
        }),
        onExit: (_) => setState(() {
          isHover = false;
        }),
        child: GestureDetector(
          onTap: () => widget.onPressed(),
          child: AnimatedContainer(
            duration: const Duration(
              microseconds: 300,
            ),
            width: 150,
            height: 50,
            color: isHover ? Colors.pinkAccent : Colors.transparent,
            child: Center(
              child: Text(
                widget.text,
                style: GoogleFonts.abel(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
