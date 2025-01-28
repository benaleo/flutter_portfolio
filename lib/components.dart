import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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

class IconLauncher extends StatelessWidget {
  final String assets;
  final String url;
  final double size;
  final String text;
  const IconLauncher({super.key, required this.assets, required this.url, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            assets,
            width: size + 5.0,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          SizedBox(width: 10),
          Sans(text, size)
        ],
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
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
  final fit;

  const CardWhatIDoSection(this.assets, this.title, {super.key, this.fit});

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

class AnimatedCardWeb extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;

  const AnimatedCardWeb({super.key, this.imagePath, this.text, this.fit, this.reverse});

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb> with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _animation,
      child: Card(
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
                widget.imagePath,
                height: 200,
                width: 200,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(height: 10.0),
              SansBold(widget.text, 15.0)
            ],
          ),
        ),
      ),
    );
  }
}
