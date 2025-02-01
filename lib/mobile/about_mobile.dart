import 'package:benaleo_profile/part/landing_section/card_skills.dart';
import 'package:flutter/material.dart';

import '../components.dart';
import '../part/landing_section/about.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: DrawerMobile(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(size: 35.0, color: Colors.black),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCircleAvatar(assets: "assets/avatar.png"),
                SizedBox(height: 20.0),
                AboutSectionMobile(),
                SizedBox(height: 40.0),
                CardSkillSectionMobile(
                  text1: "Building responsive and fast web applications using Flutter Web.",
                  text2: "Developing mobile applications using Flutter, which is a cross-platform framework created by Google. I have developed several mobile applications, including a simple game, a chatbot, and a to-do list app.",
                  text3: "Developing web and mobile applications using Firebase as the backend. I have used Firebase Authentication, Firebase Realtime Database, and Firebase Storage to develop a simple e-commerce website and a mobile application.",
                ),
                SizedBox(height: 40.0),
              ],
            ),
          ),
        ]
      ),
    );
  }
}
