import 'package:benaleo_profile/components.dart';
import 'package:flutter/material.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  tealContainer(String text) {
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
        text,
        15.0,
      ),
    );
  }

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
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/avatar.png"),
                  ),
                ),
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
                    SansBold("Benaleo Bayu Satria", 35.0),
                    Sans("Springboot Developer", 30.0)
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
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
                    tealContainer("Springboot"),
                    tealContainer("Flutter"),
                    tealContainer("Android"),
                    tealContainer("iOS"),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 60.0),

          // What i do ?
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold("What i do ?", 35.0),
              AnimatedCard(
                imagePath: "assets/webL.png",
                text: "Web Development",
                fit: BoxFit.contain,
                height: 300.0,
                width: 300.0,
                isMobile: true,
              ),
              AnimatedCard(
                imagePath: "assets/app.png",
                text: "App Development",
                fit: BoxFit.contain,
                height: 300.0,
                width: 300.0,
                isMobile: true,
                reverse: true,
              ),
              AnimatedCard(
                imagePath: "assets/firebase.png",
                text: "Back-end Development",
                fit: BoxFit.contain,
                height: 300.0,
                width: 300.0,
                isMobile: true,
              ),
              SizedBox(height: 20.0),
            ],
          ),
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
