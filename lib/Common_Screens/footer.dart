import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.52,
      color: const Color(0xFF1F1F1F),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 70, right: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Corllel",
                      style: GoogleFonts.montaga(
                          fontSize: MediaQuery.sizeOf(context).width * 0.02,
                          color: Colors.white),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 25),
                    Text(
                      "Address:",
                      style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).width * 0.012,
                          color: Colors.white),
                    ),
                    Text(
                      "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                      style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).width * 0.012,
                          color: Colors.white),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 25),
                    Text(
                      "Contact:",
                      style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).width * 0.012,
                          color: Colors.white),
                    ),
                    Text(
                      "xxxxxxxxxxxxxxxx",
                      style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).width * 0.012,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    ),
                    Text(
                      "info@example.com",
                      style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).width * 0.01,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 25),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: Image.asset('assets/images/Facebook.png',
                              height: MediaQuery.sizeOf(context).height / 25),
                        ),
                        SizedBox(width: MediaQuery.sizeOf(context).width / 85),
                        InkWell(
                          onTap: () {},
                          child: Image.asset('assets/images/Instagram.png',
                              height: MediaQuery.sizeOf(context).height / 25),
                        ),
                        SizedBox(width: MediaQuery.sizeOf(context).width / 85),
                        InkWell(
                          onTap: () {},
                          child: Image.asset('assets/images/Linkedin.png',
                              height: MediaQuery.sizeOf(context).height / 25),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Column One",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.014,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 40,
                        ),
                        Text(
                          "Link One",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.012,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 50,
                        ),
                        Text(
                          "Link Two",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.012,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 50,
                        ),
                        Text(
                          "Link Three",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.012,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 50,
                        ),
                        Text(
                          "Link Four",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.012,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Column Two",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.014,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 40,
                        ),
                        Text(
                          "Link One",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.012,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 50,
                        ),
                        Text(
                          "Link Two",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.012,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 50,
                        ),
                        Text(
                          "Link Three",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.012,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 50,
                        ),
                        Text(
                          "Link Four",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.012,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 40,
          ),
          const Divider(color: Colors.white, thickness: 1),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '©2022, All right reserved.',
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: MediaQuery.sizeOf(context).width * 0.01),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.sizeOf(context).width * 0.01,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 35,
                ),
                Text(
                  "Terms of Service",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.sizeOf(context).width * 0.01,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FooterText extends StatelessWidget {
  final String text;

  const FooterText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18));
  }
}
