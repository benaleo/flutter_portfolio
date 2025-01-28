
import 'package:benaleo_profile/components.dart';
import 'package:flutter/material.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: SansBold("Hello i'm", 15)),
            SansBold(
              "Benaleo Bayu Satria",
              55.0,
            ),
            Sans("Java Springboot Developer", 30.0),
            SizedBox(height: 15.0,),
            IconText(Icons.email, 20.0, "benaleobayu@gmail.com"),
            SizedBox(height: 10.0,),
            IconText(Icons.phone, 20.0, "089 539 246 7724"),
            SizedBox(height: 10.0,),
            IconText(Icons.pin_drop, 20.0, "Bogor, West Java"),
          ],
        ),
        CircleAvatar(
          radius: 147.0,
          backgroundColor: Colors.tealAccent,
          child: CircleAvatar(
            radius: 143.0,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 140.0,
              backgroundImage: AssetImage("assets/avatar.png"),
            ),
          ),
        ),
      ],
    );
  }
}
