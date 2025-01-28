import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        Icon(
          icon,
          color: Colors.black,
        ),
        SizedBox(
          width: spacing,
        ),
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

class CardWhatIDoSection extends StatelessWidget {
  final String assets;
  final String title;

  const CardWhatIDoSection(this.assets, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30.0,
      shadowColor: Colors.tealAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(color: Colors.tealAccent, width: 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset(
              assets,
              height: 200,
              width: 200,
            ),
            SizedBox(height: 10.0),
            SansBold(title, 15.0)
          ],
        ),
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final String heading;
  final double width;
  final String hintText;
  final maxLines;

  const TextForm({super.key, required this.heading, required this.width, required this.hintText, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 15),
        SizedBox(height: 5),
        SizedBox(
          width: width,
          child: TextFormField(
            inputFormatters: [LengthLimitingTextInputFormatter(50), FilteringTextInputFormatter(RegExp("[a-zA-Z ]"), allow: true)],
            maxLines: maxLines,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent),
                borderRadius: BorderRadius.circular(10),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 15,
                color: Colors.black12,
              ),
            ),
            validator: (text) {
              if (RegExp("\\bbapuk\\b", caseSensitive: false).hasMatch(text.toString())) {
                return "Please don't use bapuk";
              }
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ],
    );
  }
}
