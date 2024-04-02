import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/vertical_landing_page.dart';

class CustomAppmenu extends StatefulWidget {
  const CustomAppmenu({super.key});

  @override
  State<CustomAppmenu> createState() => _CustomAppmenuState();
}

class _CustomAppmenuState extends State<CustomAppmenu>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 200),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          isOpen ? controller.reverse() : controller.forward();
          setState(() {
            isOpen = !isOpen;
          });
        },
        child: Container(
          width: 150,
          height: isOpen ? 308 : 50,
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              _MenuTitle(isOpen: isOpen, controller: controller),
              if (isOpen) ...[
                CustomMenuItem(
                  text: 'Home',
                  onPressed: () => pageProvider.goTo(0),
                  delay: 0,
                ),
                CustomMenuItem(
                  text: 'About',
                  onPressed: () => pageProvider.goTo(1),
                  delay: 30,
                ),
                CustomMenuItem(
                  text: 'Pricing',
                  onPressed: () => pageProvider.goTo(2),
                  delay: 60,
                ),
                CustomMenuItem(
                  text: 'Contact',
                  onPressed: () => pageProvider.goTo(3),
                  delay: 90,
                ),
                CustomMenuItem(
                  text: 'Location',
                  onPressed: () => pageProvider.goTo(4),
                  delay: 120,
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    super.key,
    required this.isOpen,
    required this.controller,
  });

  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: isOpen ? 30 : 0,
          ),
          Text(
            'Menú',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const Spacer(),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
