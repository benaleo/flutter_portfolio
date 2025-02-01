import 'package:benaleo_profile/components.dart';
import 'package:flutter/material.dart';

class TealContainer extends StatefulWidget {
  final String text;

  const TealContainer({super.key, required this.text});

  @override
  State<TealContainer> createState() => _TealContainerState();
}

class _TealContainerState extends State<TealContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Sans(
        widget.text,
        15.0,
      ),
    );
  }
}

class AboutSection extends StatefulWidget {
  const AboutSection({super.key});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    double heightDevice = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/web.jpg",
          height: heightDevice / 1.7,
        ),
        AboutDescriptionSection(),
      ],
    );
  }
}

class AboutSectionPage extends StatefulWidget {
  const AboutSectionPage({super.key});

  @override
  State<AboutSectionPage> createState() => _AboutSectionPageState();
}

class _AboutSectionPageState extends State<AboutSectionPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MyCircleAvatar(assets: "assets/avatar.png", radius: 140.0,),
        AboutDescriptionSection(),
      ],
    );
  }
}

class AboutDescriptionSection extends StatelessWidget {
  const AboutDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SansBold("About me", 40.0),
        SizedBox(
          height: 10.0,
        ),
        Sans("Hello i'm Benaleo Bayu Satria, as well you can call me Beno.", 16.0),
        Sans("i have been completed my study in the field of computer science.", 16.0),
        Row(
          children: [
            ListSkills("Flutter"),
            SizedBox(width: 10.0),
            ListSkills("Springboot"),
            SizedBox(width: 10.0),
            ListSkills("Firebase"),
            SizedBox(width: 10.0),
            ListSkills("Android"),
            SizedBox(width: 10.0),
            ListSkills("IOS"),
            SizedBox(width: 10.0),
            ListSkills("Windows"),
            SizedBox(width: 10.0),
          ],
        ),
      ],
    );
  }
}

class AboutSectionMobile extends StatefulWidget {
  const AboutSectionMobile({super.key});

  @override
  State<AboutSectionMobile> createState() => _AboutSectionMobileState();
}

class _AboutSectionMobileState extends State<AboutSectionMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SansBold("About Me", 35.0),
        Sans(
            "Hello! I'm Benaleo Bayu Satria, I specialize in springboot development. I stive to ensure astounding performance with state of the art security for Android, iOS and Web.",
            15.0,
            textAlign: TextAlign.center),
        SizedBox(height: 20.0),
        Wrap(
          spacing: 7.0,
          runSpacing: 7.0,
          children: [
            TealContainer(text: "Springboot"),
            TealContainer(text: "Flutter"),
            TealContainer(text: "Android"),
            TealContainer(text: "iOS"),
          ],
        )
      ],
    );
  }
}
