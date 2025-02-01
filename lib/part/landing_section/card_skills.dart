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
            AnimatedCard(
              imagePath: "assets/webL.png",
              text: "Web Development",
              fit: BoxFit.contain,
              reverse: false,
            ),
            AnimatedCard(
              imagePath: "assets/app.png",
              text: "App Development",
              fit: BoxFit.contain,
              reverse: true,
            ),
            AnimatedCard(
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

class CardSkillSectionMobile extends StatefulWidget {
  final String? text1;
  final String? text2;
  final String? text3;

  const CardSkillSectionMobile({super.key, this.text1, this.text2, this.text3});

  @override
  State<CardSkillSectionMobile> createState() => _CardSkillSectionMobileState();
}

class _CardSkillSectionMobileState extends State<CardSkillSectionMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SansBold("What i do ?", 35.0),
        SizedBox(height: 40.0),
        AnimatedCard(
          imagePath: "assets/webL.png",
          text: "Web Development",
          fit: BoxFit.contain,
          height: 300.0,
          width: 300.0,
          isMobile: true,
        ),
        SizedBox(height: 20.0),
        Sans(widget.text1 ?? "", 15.0, textAlign: TextAlign.center),
        SizedBox(height: 20.0),
        AnimatedCard(
          imagePath: "assets/app.png",
          text: "App Development",
          fit: BoxFit.contain,
          height: 300.0,
          width: 300.0,
          isMobile: true,
          reverse: true,
        ),
        SizedBox(height: 20.0),
        Sans(widget.text2 ?? "", 15.0, textAlign: TextAlign.center),
        SizedBox(height: 20.0),
        AnimatedCard(
          imagePath: "assets/firebase.png",
          text: "Back-end Development",
          fit: BoxFit.contain,
          height: 300.0,
          width: 300.0,
          isMobile: true,
        ),
        SizedBox(height: 20.0),
        Sans(widget.text3 ?? "", 15.0, textAlign: TextAlign.center),
        SizedBox(height: 20.0),
      ],
    );
  }
}
