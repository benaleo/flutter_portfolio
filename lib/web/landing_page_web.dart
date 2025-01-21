import 'package:benaleo_profile/components.dart';
import 'package:benaleo_profile/intro.dart';
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

    return ListView(
      children: [
        Container(height: heightDevice - 56, child: IntroSection()),
        Container(
          height: heightDevice / 1.5,
          child: Row(
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
          ),
        ),
      ],
    );
  }
}
