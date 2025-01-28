import 'package:benaleo_profile/components.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SansBold("About me", 40.0),
            SizedBox(
              height: 10.0,
            ),
            Sans(
                "Hello i'm Benaleo Bayu Satria, as well you can call me Beno.",
                16.0),
            Sans(
                "i have been completed my study in the field of computer science.",
                16.0),
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
        ),
      ],
    );
  }
}
