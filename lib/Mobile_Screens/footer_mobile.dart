import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class FooterMobile extends StatefulWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  // bool _isHoveredConsulting = false;
  // bool _isHoveredExperience = false;
  // bool _isHoveredDesign = false;
  // bool _isHoveredCreative = false;
  // bool _isHoveredDevelopment = false;
  // bool _isHoveredMason = false;
  // bool _isHoveredAbout = false; // Added
  // bool _isHoveredCareers = false; // Added
  // bool _isHoveredContact = false;

  void _launchLinkedInURL() async {
    final Uri url = Uri.parse(
        'https://www.linkedin.com/company/digamend-technology-solutions');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    // final height = size.height;

    return SingleChildScrollView(
      child: Container(
        // height: height / 1.2,
        width: width / 1,
        color: const Color(0xFF1F1F1F),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                left: 20,
                // right: 70,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/dad.png',
                    width: width * 0.2,
                  ),
                  SizedBox(
                    height: width * 0.05,
                  ),
                  Text(
                    "About",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.042,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: width * 0.01,
                  ),
                  Text(
                    "About Us",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.04, color: Colors.grey),
                  ),
                  Text(
                    "Contact",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.04, color: Colors.grey),
                  ),
                  SizedBox(
                    height: width * 0.04,
                  ),
                  Text(
                    "Company",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.042,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: width * 0.01,
                  ),
                  Text(
                    "Privacy Policy",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.04, color: Colors.grey),
                  ),
                  Text(
                    "Terms & Conditions",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.04, color: Colors.grey),
                  ),
                  SizedBox(
                    height: width * 0.04,
                  ),
                  Text(
                    "Office Address",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.042,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: width * 0.01,
                  ),
                  Text(
                    "A3, Ponniamman 2nd Cross Street",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.04, color: Colors.grey),
                  ),
                  Text(
                    "Madipakkam,",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.04, color: Colors.grey),
                  ),
                  Text(
                    "Chennai - -600 091.",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.04, color: Colors.grey),
                  ),
                  SizedBox(
                    height: width * 0.04,
                  ),
                  Text(
                    "Requests - info@digamend.com",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.042,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: width * 0.01,
                  ),
                  Text(
                    "+91-996-222-8 DAD (323)",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.04, color: Colors.grey),
                  ),
                  Text(
                    "+91-996-222-9 DAD (323)",
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.04, color: Colors.grey),
                  ),
                  SizedBox(
                    height: width * 0.06,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              html.window.open(
                                  'https://twitter.com/DigAmenD', 'new tab');
                            },
                            child: Image.asset(
                              'assets/images/twit.png',
                              height: width * 0.04,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.06,
                          ),
                          InkWell(
                            onTap: () {
                              html.window.open(
                                  "https://www.youtube.com/@DigAmenD",
                                  'new tab');
                            },
                            child: Image.asset(
                              'assets/images/yt.png',
                              height: width * 0.04,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.06,
                          ),
                          InkWell(
                            onTap: () {
                              html.window.open(
                                  "https://www.instagram.com/digamend/",
                                  'new tab');
                            },
                            child: Image.asset(
                              'assets/images/insta.png',
                              height: width * 0.04,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.06,
                          ),
                          InkWell(
                            onTap: () {
                              html.window.open(
                                  'https://www.linkedin.com/company/digamend-technology-solutions/mycompany/verification/',
                                  'new tab');

                              // _launchLinkedInURL;
                              print("Clicked");
                            },
                            child: Image.asset(
                              'assets/images/in.png',
                              // height: MediaQuery.of(context).size.height / 20
                              height: width * 0.04,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: width * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Copyright @ 2023 DIGAMEND Technology Solutions",
                            style: GoogleFonts.oxygen(
                                fontSize: width * 0.03, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: width * 0.09,
            ),
          ],
        ),
      ),
    );
  }

  // Widget buildMouseRegion(String text, bool isHovered) {
  //   return MouseRegion(
  //     onEnter: (_) {
  //       setState(() {
  //         _isHoveredConsulting = text == "Consulting Service";
  //         _isHoveredExperience = text == "User Experience Enhancement";
  //         _isHoveredDesign = text == "Graphic Design";
  //         _isHoveredCreative = text == "Creative Service";
  //         _isHoveredDevelopment = text == "Development";
  //         _isHoveredMason = text == "Mason Service";
  //         _isHoveredAbout = text == "About";
  //         _isHoveredCareers = text == "Careers";
  //         _isHoveredContact = text == "Contact";
  //       });
  //     },
  //     onExit: (_) {
  //       setState(() {
  //         _isHoveredConsulting = false;
  //         _isHoveredExperience = false;
  //         _isHoveredDesign = false;
  //         _isHoveredCreative = false;
  //         _isHoveredDevelopment = false;
  //         _isHoveredMason = false;
  //         _isHoveredAbout = false;
  //         _isHoveredCareers = false;
  //         _isHoveredContact = false;
  //       });
  //     },
  //     child: Text(
  //       text,
  //       style: GoogleFonts.jost(
  //         fontSize: MediaQuery.of(context).size.width * 0.012,
  //         color: isHovered ? Colors.pink : Colors.grey,
  //       ),
  //     ),
  //   );
  // }
}
