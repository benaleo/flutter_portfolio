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
            decorationColor: Colors.tealAccent,
            decorationThickness: 1)
            : GoogleFonts.oswald(color: Colors.black, fontSize: 23.0),
        child: Text(widget.title),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;

  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final double size;

  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
      ),
    );
  }
}


class IconText extends StatelessWidget {
  final IconData icon;
  final double spacing;
  final String text;

  const IconText(this.icon, this.spacing, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.black,),
        SizedBox(width: spacing,),
        Sans(text, 15.0)
      ],
    );
  }
}


class ListSkills extends StatelessWidget {
  final String text;

  const ListSkills(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Sans(text, 15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(7.0),
    );
  }
}
