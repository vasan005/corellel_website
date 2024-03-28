import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class FooterSection extends StatefulWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  bool _isHoveredConsulting = false;
  bool _isHoveredExperience = false;
  bool _isHoveredDesign = false;
  bool _isHoveredCreative = false;
  bool _isHoveredDevelopment = false;
  bool _isHoveredMason = false;
  bool _isHoveredAbout = false; // Added
  bool _isHoveredCareers = false; // Added
  bool _isHoveredContact = false;

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
    final height = size.height;

    return Container(
      height: height / 1.14,
      color: const Color(0xFF1F1F1F),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              left: 70,
              right: 70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Company",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: height / 25),
                    buildMouseRegion("About", _isHoveredAbout), // Modified
                    SizedBox(height: height * 0.025),
                    buildMouseRegion("Careers", _isHoveredCareers), // Modified
                    SizedBox(height: height * 0.025),
                    buildMouseRegion("Contact", _isHoveredContact), // Modified
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Our Services",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: height / 25),
                    buildMouseRegion(
                        "Consulting Service", _isHoveredConsulting),
                    SizedBox(height: height * 0.025),
                    buildMouseRegion(
                        "User Experience Enhancement", _isHoveredExperience),
                    SizedBox(height: height * 0.025),
                    buildMouseRegion("Graphic Design", _isHoveredDesign),
                    SizedBox(height: height * 0.025),
                    buildMouseRegion("Creative Service", _isHoveredCreative),
                    SizedBox(height: height * 0.025),
                    buildMouseRegion("Development", _isHoveredDevelopment),
                    SizedBox(height: height * 0.025),
                    buildMouseRegion("Mason Service", _isHoveredMason),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Us",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: height / 25),
                    Text(
                      "Headquarters Address",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.grey),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "38, Gnanandha Nagar Main Road,",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.grey),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "Madambakkam,",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.grey),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "Chennai - 600 126,",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Office Address",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: height / 25),
                    Text(
                      "8A, Tharabarathy Street, Jaya Nagar,",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.grey),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "Puzhuthivakkam,",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.grey),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "Chennai - -600 091.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.grey),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "Requests - info@digamend.com",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.white),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "Sales - Sales@digamend.com",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.white),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "+91-44-3581-4445",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.white),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "+91-996-222-8 DAD (323)",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.white),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "+91-996-222-9 DAD (323)",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height / 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.075),
            child: Divider(color: Colors.grey[800], thickness: 1),
          ),
          SizedBox(height: height / 18),
          Row(
            children: [
              SizedBox(
                width: width / 2.7,
              ),
              Text(
                'Copyright @ 2023 DIGAMEND Technology Solutions ',
                style: GoogleFonts.jost(
                    fontSize: width * 0.011, color: Colors.white),
              ),
              SizedBox(
                width: width * 0.16,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      html.window.open(
                          'https://www.linkedin.com/company/digamend-technology-solutions',
                          'new tab');

                      // _launchLinkedInURL;
                      print("Clicked");
                    },
                    child: Image.asset('assets/images/Linkedin.png',
                        height: MediaQuery.of(context).size.height / 15),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          'https://www.facebook.com/people/Digamend-S/pfbid02wzbJ3132W7TWpVrpqaniqRq1QPa4EeDLBiHntbGyBHa8JUB8bRLamxaceqF4WpATl/',
                          'new tab');
                    },
                    child: Image.asset('assets/images/Facebook.png',
                        height: MediaQuery.of(context).size.height / 15),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  InkWell(
                    onTap: () {
                      html.window
                          .open('https://twitter.com/DigAmenD', 'new tab');
                    },
                    child: Image.asset('assets/images/Twitter.png',
                        height: MediaQuery.of(context).size.height / 15),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMouseRegion(String text, bool isHovered) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHoveredConsulting = text == "Consulting Service";
          _isHoveredExperience = text == "User Experience Enhancement";
          _isHoveredDesign = text == "Graphic Design";
          _isHoveredCreative = text == "Creative Service";
          _isHoveredDevelopment = text == "Development";
          _isHoveredMason = text == "Mason Service";
          _isHoveredAbout = text == "About";
          _isHoveredCareers = text == "Careers";
          _isHoveredContact = text == "Contact";
        });
      },
      onExit: (_) {
        setState(() {
          _isHoveredConsulting = false;
          _isHoveredExperience = false;
          _isHoveredDesign = false;
          _isHoveredCreative = false;
          _isHoveredDevelopment = false;
          _isHoveredMason = false;
          _isHoveredAbout = false;
          _isHoveredCareers = false;
          _isHoveredContact = false;
        });
      },
      child: Text(
        text,
        style: GoogleFonts.jost(
          fontSize: MediaQuery.of(context).size.width * 0.012,
          color: isHovered ? Colors.pink : Colors.grey,
        ),
      ),
    );
  }
}
