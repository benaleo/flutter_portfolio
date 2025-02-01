import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TabsWeb extends StatefulWidget {
  final String? title;
  final String? route;

  const TabsWeb({super.key, this.route, this.title});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(widget.route ?? "");
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
          print("Selected");
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
          print("Exits");
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          style: isSelected
              ? GoogleFonts.oswald(
                  shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, -5),
                      ),
                    ],
                  color: Colors.transparent,
                  fontSize: 25.0,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.tealAccent,
                  decorationThickness: 1)
              : GoogleFonts.oswald(color: Colors.black, fontSize: 23.0),
          child: Text(widget.title ?? ""),
        ),
      ),
    );
  }
}

class TabsMobileState extends StatefulWidget {
  final String text;
  final String route;

  const TabsMobileState({super.key, required this.text, required this.route});

  @override
  State<TabsMobileState> createState() => _TabsMobileStateState();
}

class _TabsMobileStateState extends State<TabsMobileState> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        height: 50.0,
        minWidth: 200.0,
        color: Colors.black,
        child: Text(
          widget.text,
          style: GoogleFonts.openSans(color: Colors.white, fontSize: 20.0),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(widget.route);
        });
  }
}

class DrawerWeb extends StatelessWidget {
  const DrawerWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/avatar.png"),
          ),
          SizedBox(height: 15.0),
          SansBold("Benaleo Bayu S.", 25.0),
          SizedBox(height: 15.0),
          IconLauncher(assets: "assets/instagram.svg", url: "https://www.instagram.com/benooow", text: "Benooow", size: 20.0),
          SizedBox(height: 15.0),
          IconLauncher(assets: "assets/twitter.svg", url: "https://www.twitter.com/benooow", text: "Benooow", size: 20.0),
          SizedBox(height: 15.0),
          IconLauncher(assets: "assets/github.svg", url: "https://www.github.com/benaleo", text: "benaleo", size: 20.0),
        ],
      ),
    );
  }
}

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2.0, color: Colors.black),
              ),
              child: Image.asset("assets/avatar.png"),
            ),
          ),
          TabsMobileState(text: "Home", route: "/"),
          SizedBox(height: 20.0),
          TabsMobileState(text: "Works", route: "/works"),
          SizedBox(height: 20.0),
          TabsMobileState(text: "Blog", route: "/blog"),
          SizedBox(height: 20.0),
          TabsMobileState(text: "About", route: "/about"),
          SizedBox(height: 20.0),
          TabsMobileState(text: "Contact", route: "/contact"),
          SizedBox(height: 40.0),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 200.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconLauncherOnly(assets: "assets/instagram.svg", url: "https://www.instagram.com/benooow", size: 30.0),
                IconLauncherOnly(assets: "assets/twitter.svg", url: "https://www.twitter.com/benooow", size: 30.0),
                IconLauncherOnly(assets: "assets/github.svg", url: "https://www.github.com/benaleo", size: 30.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderMenuWeb extends StatelessWidget {
  const HeaderMenuWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 3,
        ),
        TabsWeb(title : "Home", route: "/"),
        Spacer(),
        TabsWeb(title : "Works", route: "/works"),
        Spacer(),
        TabsWeb(title : "Blogs", route: "/blog"),
        Spacer(),
        TabsWeb(title : "About", route: "/about"),
        Spacer(),
        TabsWeb(title : "Contact", route: "/contact"),
        Spacer(),
      ],
    );
  }
}

class ContactSliverAppBar extends StatelessWidget {
  final bool? isNeedMenu;
  const ContactSliverAppBar({super.key, this.isNeedMenu});

  @override
  Widget build(BuildContext context) {
    double heightDevice = MediaQuery.of(context).size.height;
    return SliverAppBar(
        expandedHeight: heightDevice / 1.4,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            "assets/contact_image.jpg",
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
      title: isNeedMenu! ? HeaderMenuWeb() : null
    );
  }
}

class MyCircleAvatar extends StatelessWidget {
  final String assets;
  final double? radius;
  const MyCircleAvatar({super.key, required this.assets, this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius == null ? 117.0 : radius! + 7.0,
      backgroundColor: Colors.tealAccent,
      child: CircleAvatar(
        radius: radius ?? 110.0 ,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(assets),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;

  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final double size;
  final TextAlign? textAlign;

  const Sans(this.text, this.size, {super.key, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.openSans(
        fontSize: size,
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData icon;
  final double spacing;
  final String text;

  const IconText(this.icon, this.spacing, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black,
        ),
        SizedBox(
          width: spacing,
        ),
        Sans(text, 15.0)
      ],
    );
  }
}

class IconLauncher extends StatelessWidget {
  final String assets;
  final String url;
  final double size;
  final String text;

  const IconLauncher({super.key, required this.assets, required this.url, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            assets,
            width: size + 5.0,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          SizedBox(width: 10),
          Sans(text, size)
        ],
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }
}

class IconLauncherOnly extends StatelessWidget {
  final String assets;
  final String url;
  final double size;

  const IconLauncherOnly({super.key, required this.assets, required this.url, required this.size});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            assets,
            width: size,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
        ],
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }
}

class ListSkills extends StatelessWidget {
  final String text;

  const ListSkills(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Sans(text, 15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(7.0),
    );
  }
}

class CardWhatIDoSection extends StatelessWidget {
  final String assets;
  final String title;
  final bool? fit;
  final double? height;
  final double? width;

  const CardWhatIDoSection(this.assets, this.title, {super.key, this.fit, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30.0,
      shadowColor: Colors.tealAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(color: Colors.tealAccent, width: 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset(
              assets,
              height: height ?? 200,
              width: width ?? 200,
            ),
            SizedBox(height: 10.0),
            SansBold(title, 15.0)
          ],
        ),
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final String label;
  final double containerWidth;
  final String hintText;
  final int? maxLines;

  const TextForm({super.key, required this.label, required this.containerWidth, required this.hintText, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(label, 15),
        SizedBox(height: 5),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            inputFormatters: [LengthLimitingTextInputFormatter(50), FilteringTextInputFormatter(RegExp("[a-zA-Z ]"), allow: true)],
            maxLines: maxLines,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent),
                borderRadius: BorderRadius.circular(10),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 15,
                color: Colors.black12,
              ),
            ),
            validator: (text) {
              if (RegExp("\\bbapuk\\b", caseSensitive: false).hasMatch(text.toString())) {
                return "Please don't use bapuk";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ],
    );
  }
}

class AnimatedCard extends StatefulWidget {
  final imagePath;
  final String? text;
  final BoxFit? fit;
  final bool? reverse;
  final width;
  final height;
  final bool? isMobile;

  const AnimatedCard({super.key, this.imagePath, this.text, this.fit, this.reverse, this.width, this.height, this.isMobile});

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);


  late Animation<Offset> _animation = Tween(
    begin: widget.isMobile == true
        ? widget.reverse == true
        ? Offset(0.08, 0) // Jika isMobile true dan reverse true, mulai dari kanan
        : Offset(-0.08, 0) // Jika isMobile true dan reverse false, mulai dari kiri
        : widget.reverse == true
        ? Offset(0, 0.08) // Jika isMobile false dan reverse true, mulai dari bawah
        : Offset.zero, // Jika isMobile false dan reverse false, mulai dari posisi awal
    end: widget.isMobile == true
        ? widget.reverse == true
        ? Offset(-0.08, 0) // Jika isMobile true dan reverse true, bergerak ke kiri
        : Offset(0.08, 0) // Jika isMobile true dan reverse false, bergerak ke kanan
        : widget.reverse == true
        ? Offset.zero // Jika isMobile false dan reverse true, bergerak ke posisi awal
        : Offset(0, 0.08), // Jika isMobile false dan reverse false, bergerak ke bawah
  ).animate(_controller);


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30.0,
        shadowColor: Colors.tealAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.tealAccent, width: 1.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height ?? 200,
                width: widget.width ?? 200,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(height: 10.0),
              SansBold(widget.text, 15.0)
            ],
          ),
        ),
      ),
    );
  }
}
