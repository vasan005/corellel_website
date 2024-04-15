import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher package for launching URLs

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
  bool _isHoveredTerms = false;
  bool _isHoveredAbout = false; // Added
  bool _isHoveredCareers = false; // Added
  bool _isHoveredPrivacy = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Container(
      width: width / 1,
      color: const Color(0xFF1F1F1F),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.06, left: width * 0.02, right: width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: GoogleFonts.oxygen(
                          fontSize: width * 0.013,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffFFFFFF)),
                    ),
                    SizedBox(height: height * 0.015),
                    buildMouseRegion("About Us", _isHoveredAbout), // Modified
                    SizedBox(height: height * 0.015),
                    buildMouseRegion("Contact", _isHoveredCareers), // Modified
                    // Modified
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Text(
                      "Company",
                      style: GoogleFonts.oxygen(
                        fontSize: width * 0.012,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    buildMouseRegion(
                        "Privacy Policy", _isHoveredPrivacy), // Modified
                    SizedBox(height: height * 0.015),
                    buildMouseRegion("Terms & Conditions", _isHoveredTerms),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Us",
                      style: GoogleFonts.oxygen(
                        fontSize: width * 0.013,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    Text(
                      "Headquarters Address",
                      style: GoogleFonts.oxygen(
                          fontWeight: FontWeight.w700,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 191, 189, 189)),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "38, Gnanandha Nagar Main Road,",
                      style: GoogleFonts.oxygen(
                          fontWeight: FontWeight.normal,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 179, 177, 177)),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "Madambakkam,",
                      style: GoogleFonts.oxygen(
                          fontWeight: FontWeight.normal,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 179, 177, 177)),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "Chennai - 600 126,",
                      style: GoogleFonts.oxygen(
                          fontWeight: FontWeight.normal,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 179, 177, 177)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Office Address",
                      style: GoogleFonts.oxygen(
                          fontSize: width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffFFFFFF)),
                    ),
                    SizedBox(height: height * 0.015),
                    Text(
                      "8A, Tharabarathy Street, Jaya Nagar,",
                      style: GoogleFonts.oxygen(
                          fontWeight: FontWeight.w700,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 191, 189, 189)),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "Puzhuthivakkam,",
                      style: GoogleFonts.oxygen(
                          fontWeight: FontWeight.normal,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 179, 177, 177)),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "Chennai - -600 091.",
                      style: GoogleFonts.oxygen(
                          fontWeight: FontWeight.normal,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 179, 177, 177)),
                    ),
                    SizedBox(height: height * 0.025),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Requests - info@digamend.com",
                      style: GoogleFonts.oxygen(
                          fontSize: width * 0.012,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffFFFFFF)),
                    ),
                    SizedBox(height: height * 0.015),
                    Text(
                      "+91-996-222-8 DAD (323)",
                      style: GoogleFonts.oxygen(
                        fontWeight: FontWeight.normal,
                        fontSize: width * 0.012,
                        color: const Color.fromARGB(255, 180, 177, 177),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "+91-996-222-9 DAD (323)",
                      style: GoogleFonts.oxygen(
                        // fontWeight: FontWeight.w600,
                        fontWeight: FontWeight.normal,
                        fontSize: width * 0.012,
                        color: const Color.fromARGB(255, 180, 177, 177),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: height * 0.01),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Divider(
                color: const Color.fromARGB(255, 223, 219, 219),
                thickness: width * 0.002),
          ),
          // SizedBox(height: height / 18),
          Padding(
            padding: EdgeInsets.only(top: height * 0.009),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 0.053,
                ),
                Image.asset(
                  'assets/images/dad.png',
                  width: width / 19,
                ),
                SizedBox(
                  width: width * 0.25,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.035),
                  child: Text(
                    'Copyright @ 2023 DIGAMEND Technology Solutions ',
                    style: GoogleFonts.oxygen(
                        fontSize: width * 0.011,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  width: width * 0.18,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        launch("https://twitter.com/DigAmenD");
                      },
                      child: Image.asset(
                        'assets/images/twi.png',
                        width: width * 0.016,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    InkWell(
                      onTap: () {
                        launch("https://www.youtube.com/@DigAmenD");
                      },
                      child: Image.asset(
                        'assets/images/y.png',
                        height: MediaQuery.of(context).size.height * 0.03,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    InkWell(
                      onTap: () {
                        launch("https://www.instagram.com/digamend/");
                      },
                      child: Image.asset(
                        'assets/images/ins.png',
                        width: width * 0.016,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    // InkWell(
                    //   onTap: () {},
                    // ),
                    GestureDetector(
                      onTap: () {
                        launch(
                            'https://www.linkedin.com/company/digamend-technology-solutions/mycompany/verification/');
                      },
                      child: Image.asset(
                        'assets/images/lin.png',
                        height: MediaQuery.of(context).size.height * 0.036,
                        // color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.035,
          )
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
          _isHoveredTerms = text == "Terms & Conditions";
          _isHoveredAbout = text == "About Us";
          _isHoveredCareers = text == "Contact";
          _isHoveredPrivacy = text == "Privacy Policy";
        });
      },
      onExit: (_) {
        setState(() {
          _isHoveredConsulting = false;
          _isHoveredExperience = false;
          _isHoveredDesign = false;
          _isHoveredCreative = false;
          _isHoveredDevelopment = false;
          _isHoveredTerms = false;
          _isHoveredAbout = false;
          _isHoveredCareers = false;
          _isHoveredPrivacy = false;
        });
      },
      child: Text(
        text,
        style: GoogleFonts.oxygen(
          fontWeight: FontWeight.normal,
          fontSize: MediaQuery.of(context).size.width * 0.013,
          color: isHovered
              ? Colors.pink
              : const Color.fromARGB(255, 179, 177, 177),
        ),
      ),
    );
  }
}
