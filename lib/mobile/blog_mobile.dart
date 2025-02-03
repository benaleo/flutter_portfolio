import 'package:benaleo_profile/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        endDrawer: DrawerMobile(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/blog.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                  centerTitle: true,
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7), // Transparansi latar belakang
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: AbelCustom(
                      text: "Welcome to my blog",
                      size: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ];
          },
          body: ListView(
            children: [
              BlogPostMobile(),
              BlogPostMobile(),
              BlogPostMobile(),
            ],
          ),
        ),
      ),
    );
  }
}

class BlogPostMobile extends StatefulWidget {
  const BlogPostMobile({super.key});

  @override
  State<BlogPostMobile> createState() => _BlogPostMobileState();
}

class _BlogPostMobileState extends State<BlogPostMobile> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid, width: 1.0), borderRadius: BorderRadius.circular(5.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(3.0)),
                  child: AbelCustom(
                    text: "Who is Dash?",
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      expand = !expand;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down_circle_outlined),
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              "As soon as Shams Zakhour started working as a Dart writer at Google in December 2013, she started advocating for a Dart mascot. After documenting Java for 14 years, she had observed how beloved the Java mascot, Duke, had become, and she wanted something similar for Dart. But the idea didn't gain momentum until 2017, when one of the Flutter engineers, Nina Chen, suggested it on an internal mailing list. The Flutter VP at the time, Joshy Joseph, approved the idea and asked the organizer for the 2018 Dart Conference, Linda Rasmussen, to make it happen. Once Shams heard about these plans, she rushed to Linda and asked to own and drive the project to produce the plushies for the conference. Linda had already elicited some design sketches, which she handed off. Starting with the sketches, Shams located a vendor who could work within an aggressive deadline (competing with Lunar New Year), and started the process of creating the specs for the plushy. That's right, Dash was originally a Dart mascot, not a Flutter mascot.",
              style: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
              maxLines: expand == true ? null : 3,
              overflow: expand == true ? TextOverflow.visible : TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
