import 'package:benaleo_profile/mobile/contact_mobile.dart';
import 'package:benaleo_profile/mobile/landing_page_mobile.dart';
import 'package:benaleo_profile/web/contact_web.dart';
import 'package:benaleo_profile/web/landing_page_web.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else {
                return LandingPageMobile();
              }
            },
          ),
        );
      case '/contact':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraits) {
              if (constraits.maxWidth > 800) {
                return ContactWeb();
              } else {
                return ContactMobile();
              }
            },
          ),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else {
                return LandingPageMobile();
              }
            },
          ),
        );
    }
  }
}
