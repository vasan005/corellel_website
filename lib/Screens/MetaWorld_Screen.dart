// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:corllel/Common_Screens/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class MetaWorldScreen extends StatefulWidget {
  const MetaWorldScreen({super.key});

  @override
  State<MetaWorldScreen> createState() => _MetaWorldScreenState();
}

class _MetaWorldScreenState extends State<MetaWorldScreen> {
  final LinearGradient _gradient = LinearGradient(
    colors: <Color>[Color(0xffF86CF8), Color(0xff64CEF5)],
  );

  final LinearGradient _gradient2 = LinearGradient(
    colors: <Color>[Color(0xffF86CF8), Color(0xff6FC7F6)],
  );

  late VideoPlayerController _videoController1;
  late VideoPlayerController _videoController2;

  bool isHovering1ndVideo = false;
  bool isHovering1ndVideo2 = false;

  @override
  void initState() {
    _videoController1 =
        // ignore: deprecated_member_use
        VideoPlayerController.network('assets/images/shortvideo1.mp4')
          ..initialize().then((_) {
            setState(() {});
          });

    _videoController2 =
        // ignore: deprecated_member_use
        VideoPlayerController.network('assets/images/shortvideo2.mp4')
          ..initialize().then((_) {
            setState(() {});
          });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          // width: MediaQuery.sizeOf(context).width,
          //  height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(color: Colors.black
              // image: DecorationImage(
              //     fit: BoxFit.fill,
              //     image: AssetImage(
              //       'assets/images/meta_bg.png',
              //     ))
              ),
          child: Column(
            children: [
              // SizedBox(
              //   width: MediaQuery.sizeOf(context).width/2,
              //   height: 200,
              // ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width / 20),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/girlwithstar.png',
                        width: MediaQuery.sizeOf(context).width / 2.5,

                        // height: 600,
                        // width: 550,
                      ),
                      SizedBox(width: MediaQuery.sizeOf(context).width / 22),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   width: MediaQuery.sizeOf(context).width / 2,
                          // ),
                          Text(
                            ' of',
                            style: GoogleFonts.montaga(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.046),
                          ),
                          // Text(
                          //   'the',
                          //   style: GoogleFonts.montaga(
                          //       color: Colors.white, fontSize: 60),
                          // ),
                          ShaderMask(
                            shaderCallback: (Rect rect) {
                              return _gradient.createShader(rect);
                            },
                            child: Text(
                              'Metaverse',
                              style: GoogleFonts.montaga(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.sizeOf(context).width * 0.046),
                            ),
                          ),
                          Text(
                            'Lets team up to explore and design your metaverse experience.',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.014,
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                              height: MediaQuery.sizeOf(context).height / 20),
                          ElevatedButton(
                            onPressed: () {
                              // Your Join Now button onPressed function
                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xFFFF40E5),
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  side: const BorderSide(
                                      color: Color(0xFFFF40E5)),
                                )),
                            child: Text(
                              'Discover Now',
                              style: GoogleFonts.montserrat(
                                  color: const Color(0xFFFF40E5),
                                  fontSize:
                                      MediaQuery.sizeOf(context).width * 0.012,
                                  height: MediaQuery.sizeOf(context).height *
                                      0.002),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height / 60),
              Row(
                children: [
                  SizedBox(width: MediaQuery.sizeOf(context).width / 20),
                  Image.asset(
                    'assets/images/image2.png',
                    width: MediaQuery.sizeOf(context).width / 2.5,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 7,
                    // height: MediaQuery.sizeOf(context).height,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'What is',
                            style: GoogleFonts.oxygen(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.024,
                            ),
                          ),
                          ShaderMask(
                            shaderCallback: (Rect rect) {
                              return _gradient.createShader(rect);
                            },
                            child: Text(
                              ' Metaverse',
                              style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.024,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2.5,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.sizeOf(context).height / 45),
                          child: Text(
                            "the metaverse represents a convergence of digital spaces, social interaction, and immersive technologies, offering users a multifaceted and interconnected digital experience. It has applications in gaming, socializing, business, education, and various other fields, shaping the future of online interaction and digital presence.",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.012,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 20,
                        width: MediaQuery.sizeOf(context).width / 9,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Your Join Now button onPressed function
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor: const Color(0xFFFF40E5),
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: const BorderSide(color: Color(0xFFFF40E5)),
                            )),
                        child: Text(
                          'Discover Now',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFFF40E5),
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.012,
                              height:
                                  MediaQuery.sizeOf(context).height * 0.002),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 6,
              ),
              Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'How does the ',
                          style: GoogleFonts.oxygen(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.sizeOf(context).width * 0.028),
                        ),
                        ShaderMask(
                          shaderCallback: (Rect rect) {
                            return _gradient2.createShader(rect);
                          },
                          child: Text(
                            'Metaverse work',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.028),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'A virtual network called the metaverse incorporates elements of social \n                        interaction and immersive experiences.',
                    style: GoogleFonts.oxygen(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: MediaQuery.sizeOf(context).width * 0.015,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height / 1.42,
                    width: MediaQuery.sizeOf(context).width / 4,
                    decoration: BoxDecoration(
                        color: Color(0xff090823),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width / 75,
                          top: MediaQuery.sizeOf(context).height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/image3.png',
                            width: MediaQuery.sizeOf(context).width / 4.5,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 35,
                          ),
                          Text(
                            'Discuss with Colleagues',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.015),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 45)),
                          Text(
                            'Working online is the same experience as\n an office. This will be. achieved with..',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.010),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 15,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xFFFF40E5),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  side: const BorderSide(
                                      color: Color(0xFFFF40E5)),
                                )),
                            child: Text(
                              'Explore Now',
                              style: GoogleFonts.montserrat(
                                color: const Color(0xFFFF40E5),
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.011,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width / 38),
                  Container(
                    height: MediaQuery.sizeOf(context).height / 1.42,
                    width: MediaQuery.sizeOf(context).width / 4,
                    decoration: BoxDecoration(
                        color: Color(0xff090823),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width / 75,
                          top: MediaQuery.sizeOf(context).height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: MediaQuery.sizeOf(context).height / 18,
                          //   width: MediaQuery.sizeOf(context).width / ,
                          // ),
                          // Padding(
                          //     padding: EdgeInsets.only(
                          //         top: MediaQuery.sizeOf(context).height / 25,
                          //         left: MediaQuery.sizeOf(context).width / 1)),
                          Image.asset(
                            'assets/images/image4.png',
                            width: MediaQuery.sizeOf(context).width / 4.5,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 35,
                          ),
                          Text(
                            'Virtual Reality Concert',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.015),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 45)),
                          Text(
                            'Watching concerts virtually is one of the things that can be done in cyberspace..',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.010),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Your Join Now button onPressed function
                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xFFFF40E5),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  side: const BorderSide(
                                      color: Color(0xFFFF40E5)),
                                )),
                            child: Text(
                              'Explore Now',
                              style: GoogleFonts.montserrat(
                                color: const Color(0xFFFF40E5),
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.011,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.002,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 38,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height / 1.42,
                    width: MediaQuery.sizeOf(context).width / 4,
                    decoration: BoxDecoration(
                        color: Color(0xff090823),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width / 75,
                          top: MediaQuery.sizeOf(context).height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/image5.png',
                            width: MediaQuery.sizeOf(context).width / 4.5,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 35,
                          ),
                          Text(
                            'Playing Games',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.015),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 45)),
                          Text(
                            'For gamers, the metaverse could be an \n interesting platform of choice for the..',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.010),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Your Join Now button onPressed function
                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xFFFF40E5),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  side: const BorderSide(
                                      color: Color(0xFFFF40E5)),
                                )),
                            child: Text(
                              'Explore Now',
                              style: GoogleFonts.montserrat(
                                color: const Color(0xFFFF40E5),
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.011,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.002,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height / 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height / 1.42,
                    width: MediaQuery.sizeOf(context).width / 4,
                    decoration: BoxDecoration(
                        color: Color(0xff090823),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width / 75,
                          top: MediaQuery.sizeOf(context).height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: MediaQuery.sizeOf(context).height / 18,
                          //   width: MediaQuery.sizeOf(context).width / ,
                          // ),
                          // Padding(
                          //     padding: EdgeInsets.only(
                          //         top: MediaQuery.sizeOf(context).height / 25,
                          //         left: MediaQuery.sizeOf(context).width / 1)),
                          Image.asset(
                            'assets/images/image6.png',
                            width: MediaQuery.sizeOf(context).width / 4.5,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 35,
                          ),
                          Text(
                            'Online Travel',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.015),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 45)),
                          Text(
                            'With cyberspace, online travel is certainly not impossible. We can do this with the help of..',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.010),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Your Join Now button onPressed function
                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xFFFF40E5),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  side: const BorderSide(
                                      color: Color(0xFFFF40E5)),
                                )),
                            child: Text(
                              'Explore Now',
                              style: GoogleFonts.montserrat(
                                color: const Color(0xFFFF40E5),
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.011,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.002,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 38,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height / 1.42,
                    width: MediaQuery.sizeOf(context).width / 4,
                    decoration: BoxDecoration(
                        color: Color(0xff090823),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width / 75,
                          top: MediaQuery.sizeOf(context).height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: MediaQuery.sizeOf(context).height / 18,
                          //   width: MediaQuery.sizeOf(context).width / ,
                          // ),
                          // Padding(
                          //     padding: EdgeInsets.only(
                          //         top: MediaQuery.sizeOf(context).height / 25,
                          //         left: MediaQuery.sizeOf(context).width / 1)),
                          Image.asset(
                            'assets/images/image7.png',
                            width: MediaQuery.sizeOf(context).width / 4.5,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 35,
                          ),
                          Text(
                            'Artworks',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.015),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 45)),
                          Text(
                            'In the past, works of art such as paintings could only be seen in the real world..',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.010),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Your Join Now button onPressed function
                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xFFFF40E5),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  side: const BorderSide(
                                      color: Color(0xFFFF40E5)),
                                )),
                            child: Text(
                              'Explore Now',
                              style: GoogleFonts.montserrat(
                                color: const Color(0xFFFF40E5),
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.011,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.002,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 38,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height / 1.42,
                    width: MediaQuery.sizeOf(context).width / 4,
                    decoration: BoxDecoration(
                        color: Color(0xff090823),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width / 75,
                          top: MediaQuery.sizeOf(context).height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: MediaQuery.sizeOf(context).height / 18,
                          //   width: MediaQuery.sizeOf(context).width / ,
                          // ),
                          // Padding(
                          //     padding: EdgeInsets.only(
                          //         top: MediaQuery.sizeOf(context).height / 25,
                          //         left: MediaQuery.sizeOf(context).width / 1)),
                          Image.asset(
                            'assets/images/image8.png',
                            width: MediaQuery.sizeOf(context).width / 4.5,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 35,
                          ),
                          Text(
                            'Digital Clothing',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.015),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height / 45)),
                          Text(
                            'The community has also been active with the emergence of paintings or drawings..',
                            style: GoogleFonts.oxygen(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.010),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Your Join Now button onPressed function
                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: const Color(0xFFFF40E5),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  side: const BorderSide(
                                      color: Color(0xFFFF40E5)),
                                )),
                            child: Text(
                              'Explore Now',
                              style: GoogleFonts.montserrat(
                                color: const Color(0xFFFF40E5),
                                fontSize:
                                    MediaQuery.sizeOf(context).width * 0.011,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.002,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Our Latest',
                        style: GoogleFonts.oxygen(
                          color: Colors.white,
                          fontSize: MediaQuery.sizeOf(context).width * 0.024,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ShaderMask(
                        shaderCallback: (Rect rect) {
                          return _gradient.createShader(rect);
                        },
                        child: Text(
                          ' Works',
                          style: GoogleFonts.oxygen(
                            color: Colors.white,
                            fontSize: MediaQuery.sizeOf(context).width * 0.024,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Adipiscing at in tellus integer. Pellentesque massa placerat duis \n                                   ultricies. Venenatis cras',
                    style: GoogleFonts.oxygen(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: MediaQuery.sizeOf(context).width * 0.012,
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height / 10),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.sizeOf(context).width / 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _videoController1.value.isInitialized
                              ? MouseRegion(
                                  onHover: (event) {
                                    setState(() {
                                      isHovering1ndVideo = true;
                                    });
                                  },
                                  onExit: (event) {
                                    setState(() {
                                      isHovering1ndVideo = false;
                                    });
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width / 1.3,
                                    decoration: BoxDecoration(
                                      // gradient: LinearGradient(colors: [
                                      //   Color(0xffF86CF8),
                                      //   Color(0xff64CEF5),
                                      // ]),
                                      border: Border.fromBorderSide(
                                        BorderSide(
                                          // Assuming you want a horizontal gradient from red to blue
                                          // You can adjust colors and stops as per your requirement
                                          // color: Colors.transparent,

                                          width: 1,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(45),
                                      gradient: LinearGradient(colors: [
                                        Color(0xffF86CF8),
                                        Color(0xff64CEF5),
                                      ]),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          MediaQuery.sizeOf(context).width /
                                              220),
                                      child: Stack(children: [
                                        SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width /
                                                  1.3,
                                          child: AspectRatio(
                                            aspectRatio: 16 / 9,
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(35)),
                                                child: VideoPlayer(
                                                    _videoController1)),
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: Visibility(
                                            visible: isHovering1ndVideo,
                                            child: FloatingActionButton(
                                              backgroundColor:
                                                  Colors.transparent,
                                              onPressed: () {
                                                setState(() {
                                                  _videoController1
                                                          .value.isPlaying
                                                      ? _videoController1
                                                          .pause()
                                                      : _videoController1
                                                          .play();
                                                });
                                              },
                                              child: Icon(
                                                _videoController1
                                                        .value.isPlaying
                                                    ? Icons
                                                        .pause_circle_outline_outlined
                                                    : Icons
                                                        .play_circle_fill_rounded,
                                                size: 50,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                )
                              : Container(),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 23,
                          ),
                          _videoController2.value.isInitialized
                              ? MouseRegion(
                                  onHover: (event) {
                                    setState(() {
                                      isHovering1ndVideo2 = true;
                                    });
                                  },
                                  onExit: (event) {
                                    setState(() {
                                      isHovering1ndVideo2 = false;
                                    });
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      // Wrap with another container for applying gradient to the border
                                      border: Border.all(
                                        // Use a gradient for the border color
                                        // Assuming you want a horizontal gradient from red to blue

                                        width: 1,
                                      ),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xffF86CF8),
                                          Color(0xff64CEF5)
                                        ]),
                                        borderRadius: BorderRadius.circular(35),
                                        // color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            MediaQuery.sizeOf(context).width /
                                                220),
                                        child: Stack(
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.3,
                                              child: AspectRatio(
                                                aspectRatio: 16 / 9,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(35),
                                                  child: VideoPlayer(
                                                      _videoController2),
                                                ),
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Visibility(
                                                visible: isHovering1ndVideo2,
                                                child: FloatingActionButton(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  onPressed: () {
                                                    setState(() {
                                                      _videoController2
                                                              .value.isPlaying
                                                          ? _videoController2
                                                              .pause()
                                                          : _videoController2
                                                              .play();
                                                    });
                                                  },
                                                  child: Icon(
                                                    _videoController2
                                                            .value.isPlaying
                                                        ? Icons
                                                            .pause_circle_outline_outlined
                                                        : Icons
                                                            .play_circle_fill_rounded,
                                                    size: 50,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: MediaQuery.sizeOf(context).height / 10,
              ),

              FooterSection()
            ],
          ),
        ),
      ),
    );
  }
}
