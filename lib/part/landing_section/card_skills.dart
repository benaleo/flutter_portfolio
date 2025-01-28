import 'package:benaleo_profile/components.dart';
import 'package:flutter/material.dart';

class CardSkillsSection extends StatelessWidget {
  const CardSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SansBold("What I do?", 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedCardWeb(
              imagePath: "assets/webL.png",
              text: "Web Development",
              fit: BoxFit.contain,
              reverse: false,
            ),
            AnimatedCardWeb(
              imagePath: "assets/app.png",
              text: "App Development",
              fit: BoxFit.contain,
              reverse: true,
            ),
            AnimatedCardWeb(
              imagePath: "assets/firebase.png",
              text: "Back-end Development",
              fit: BoxFit.contain,
              reverse: false,
            ),
          ],
        ),
      ],
    );
  }
}
