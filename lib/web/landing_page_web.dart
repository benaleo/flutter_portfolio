import 'package:benaleo_profile/components.dart';
import 'package:flutter/material.dart';

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
            Spacer(flex: 3,),
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
      body: ProfileCircleAvatar()
    );
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
    return CircleAvatar(
      radius: 103.0,
      backgroundColor: Colors.black,
      child: CircleAvatar(
        radius: 100.0,
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
    );
  }
}
