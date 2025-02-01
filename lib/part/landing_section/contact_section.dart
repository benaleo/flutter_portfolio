import 'package:flutter/material.dart';

import '../../components.dart';

class ContactSectionWeb extends StatelessWidget {
  const ContactSectionWeb({super.key});

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
                TextForm(label: "First name", containerWidth: 350, hintText: "Please input your first name."),
                SizedBox(
                  height: 15,
                ),
                TextForm(label: "Email", containerWidth: 350, hintText: "Please input your email."),
              ],
            ),
            Column(
              children: [
                TextForm(label: "Last name", containerWidth: 350, hintText: "Please input your last name."),
                SizedBox(
                  height: 15,
                ),
                TextForm(label: "Phone number", containerWidth: 350, hintText: "Please input your phone number."),
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
        TextForm(
          label: "Message",
          containerWidth: widthDevice / 1.65,
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


class ContactSectionMobile extends StatefulWidget {
  const ContactSectionMobile({super.key});

  @override
  State<ContactSectionMobile> createState() => _ContactSectionMobileState();
}

class _ContactSectionMobileState extends State<ContactSectionMobile> {
  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;

    return Wrap(
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
    );
  }
}
