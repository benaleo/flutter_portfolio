import 'package:benaleo_profile/part/landing_section/about.dart';
import 'package:benaleo_profile/components.dart';
import 'package:benaleo_profile/part/landing_section/card_skills.dart';
import 'package:benaleo_profile/part/landing_section/form.dart';
import 'package:benaleo_profile/part/landing_section/intro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            children: [
              Spacer(
                flex: 3,
              ),
              TabsWeb("Home"),
              Spacer(),
              TabsWeb("Works"),
              Spacer(),
              TabsWeb("Blogs"),
              Spacer(),
              TabsWeb("About"),
              Spacer(),
              TabsWeb("Contact"),
              Spacer(),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 25.0,
          ),
        ),
        body: ProfileCircleAvatar());
  }
}

class ProfileCircleAvatar extends StatefulWidget {
  const ProfileCircleAvatar({super.key});

  @override
  State<ProfileCircleAvatar> createState() => _ProfileCircleAvatarState();
}

class _ProfileCircleAvatarState extends State<ProfileCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    double heightDevice = MediaQuery.of(context).size.height;
    double widthDevice = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        Container(height: heightDevice - 56, child: IntroSection()),
        Container(height: heightDevice / 1.5, child: AboutSection()),
        Container(height: heightDevice / 1.5, child: CardSkillsSection()),
        Container(height: heightDevice, child: HomeFormSection())
      ],
    );
  }
}
