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
        Container(
          height: heightDevice - 56,
          child: IntroSection()
        ),
        Container(
          height: heightDevice / 1.5,
          child:Column(
            children: [
              SansBold("About me", 40.0),
              SizedBox(height: 10.0,),
              Sans("Hello i'm Benaleo Bayu Satria, as well you can call me Beno.", 16.0),
              Sans("i have been completed my study in the field of computer science.", 16.0),
            ],
          )
        ),
      ],
    );
  }
}
