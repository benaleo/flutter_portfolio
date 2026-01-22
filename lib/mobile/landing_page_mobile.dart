import 'package:benaleo_profile/components.dart';
import 'package:benaleo_profile/part/landing_section/card_skills.dart';
import 'package:flutter/material.dart';

import '../part/landing_section/about.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: DrawerMobile(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35.0, color: Colors.black),
      ),
      body: ListView(
        children: [
          // Intro
          Container(
            alignment: Alignment.center,
            child: MyCircleAvatar(assets: "assets/avatar.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      child: SansBold("Hello, i'm", 15.0),
                    ),
                    SansBold("Beno Dev", 35.0),
                    Sans("Fullstack Developer", 30.0)
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        IconText(Icons.email, 10.0, "benaleobayu@gmail.com"),
                        IconText(Icons.phone, 10.0, "+62 81 383 925 458"),
                        IconText(Icons.location_pin, 10.0, "Bogor, Indonesia"),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 90.0),

          // About
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: AboutSectionMobile(),
          ),
          SizedBox(height: 60.0),

          // What i do ?
          CardSkillSectionMobile(),
          SizedBox(height: 60.0),

          // Contact
          Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              SansBold("Contact Me", 35.0),
              TextForm(label: "First name", containerWidth: widthDevice / 1.4, hintText: "Please input your first name."),
              TextForm(label: "Last name", containerWidth: widthDevice / 1.4, hintText: "Please input your last name."),
              TextForm(label: "Email", containerWidth: widthDevice / 1.4, hintText: "Please input your email address."),
              TextForm(label: "Phone number", containerWidth: widthDevice / 1.4, hintText: "Please input your phone number."),
              TextForm(
                label: "Message",
                containerWidth: widthDevice / 1.4,
                hintText: "Please input the message.",
                maxLines: 5,
              ),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: widthDevice / 2.2,
                color: Colors.tealAccent,
                child: SansBold("Submit", 15.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
