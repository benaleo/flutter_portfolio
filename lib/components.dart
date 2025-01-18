import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;

  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
        print("Selected");
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
        print("Exits");
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        style: isSelected
            ? GoogleFonts.oswald(
                shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0, -5),
                    ),
                  ],
                color: Colors.transparent,
                fontSize: 25.0,
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
                decorationThickness: 1)
            : GoogleFonts.oswald(color: Colors.black, fontSize: 23.0),
        child: Text(widget.title),
      ),
    );
  }
}
