import 'package:flutter/material.dart';

import '../../components.dart';

class HomeFormSection extends StatelessWidget {
  const HomeFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SansBold("Contact Me", 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                TextForm(heading: "First name", width: 350, hintText: "Please input your first name."),
                SizedBox(
                  height: 15,
                ),
                TextForm(heading: "Email", width: 350, hintText: "Please input your email."),
              ],
            ),
            Column(
              children: [
                TextForm(heading: "Last name", width: 350, hintText: "Please input your last name."),
                SizedBox(
                  height: 15,
                ),
                TextForm(heading: "Phone number", width: 350, hintText: "Please input your phone number."),
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
        TextForm(
          heading: "Message",
          width: widthDevice / 1.42,
          hintText: "Please input a message.",
          maxLines: 5,
        ),
        SizedBox(height: 15),
        MaterialButton(
          elevation: 20.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          height: 60.0,
          minWidth: 200.0,
          color: Colors.tealAccent,
          child: SansBold("Submit", 20.0),
          onPressed: () {},
        )
      ],
    );
  }
}
