import 'package:benaleo_profile/part/landing_section/contact_section.dart';
import 'package:flutter/material.dart';

import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerMobile(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[MobileSliverAppBar(isNeedMenu:false)];
        },
        body: SingleChildScrollView(
          child: ContactSectionMobile(),
        ),
      ),
    );
  }
}
