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
        Wrap(
          children: [
            CardWhatIDoSection(
              "assets/webL.png",
              "Web Development",
            ),
            CardWhatIDoSection(
              "assets/app.png",
              "App Development",
            ),
            CardWhatIDoSection(
              "assets/firebase.png",
              "Back-end Development",
            ),
          ],
        ),
      ],
    );
  }
}
