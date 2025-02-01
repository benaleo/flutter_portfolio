import 'package:benaleo_profile/components.dart';
import 'package:benaleo_profile/part/landing_section/contact_section.dart';
import 'package:flutter/material.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWeb(),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            ContactSliverAppBar(isNeedMenu: true,)
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              ContactSectionWeb()
            ],
          ),
        ),
      ),
    );
  }
}
