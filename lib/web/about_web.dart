import 'package:benaleo_profile/components.dart';
import 'package:benaleo_profile/part/landing_section/about.dart';
import 'package:flutter/material.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    double heightDevice = MediaQuery.of(context).size.height;
    double widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: DrawerWeb(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: HeaderMenuWeb(),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 25.0,
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: heightDevice, child: AboutSectionPage()),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedCard(
                        imagePath: "assets/webL.png",
                        text: "Web Development",
                        fit: BoxFit.contain,
                        height: 250.0,
                        width: 250.0,
                      ),
                      SizedBox(
                        width: widthDevice / 3,
                        child: Column(
                          children: [
                            SansBold("Web Development", 30.0),
                            SizedBox(height: 20.0),
                            Sans(
                              "Building responsive and fast web applications using Flutter Web.",
                              15.0,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: widthDevice / 3,
                        child: Column(
                          children: [
                            SansBold("App Development", 30.0),
                            SizedBox(height: 20.0),
                            Wrap(
                              children: [
                                Sans(
                                  "Developing mobile applications using Flutter, which is a cross-platform framework created by Google. I have developed several mobile applications, including a simple game, a chatbot, and a to-do list app.",
                                  15.0,
                                ),
                              ]
                            ),
                          ],
                        ),
                      ),
                      AnimatedCard(
                        imagePath: "assets/app.png",
                        text: "App Development",
                        fit: BoxFit.contain,
                        height: 250.0,
                        width: 250.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedCard(
                        imagePath: "assets/firebase.png",
                        text: "Backend Development",
                        fit: BoxFit.contain,
                        height: 250.0,
                        width: 250.0,
                      ),
                      SizedBox(
                        width: widthDevice / 3,
                        child: Column(
                          children: [
                            SansBold("Web Development", 30.0),
                            SizedBox(height: 20.0),
                            Sans(
                              "Developing web and mobile applications using Firebase as the backend. I have used Firebase Authentication, Firebase Realtime Database, and Firebase Storage to develop a simple e-commerce website and a mobile application.",
                              15.0,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: heightDevice / 1.5)
            ],
          ),
        ],
      ),
    );
  }
}
