// ignore_for_file: deprecated_member_use, file_names

import 'package:corllel/Common_Screens/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:video_player/video_player.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int currentIndex = 0;

  late VideoPlayerController _controller;
  late VideoPlayerController _controller2;

  late VideoPlayerController _controller3;

  late VideoPlayerController _controller4;
  late VideoPlayerController _controller5;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network('assets/images/shortvideo2.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _controller2 =
        VideoPlayerController.network('assets/images/shortvideo1.mp4')
          ..initialize().then((_) {
            setState(() {});
          });

    _controller3 = VideoPlayerController.network('assets/images/bigscreen1.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _controller4 =
        VideoPlayerController.network('assets/images/shortvideo2.mp4')
          ..initialize().then((_) {
            setState(() {});
          });

    _controller5 =
        VideoPlayerController.network('assets/images/shortvideo1.mp4')
          ..initialize().then((_) {
            setState(() {});
          });
  }

  bool isHovering1ndVideo = false;
  bool isHovering2 = false;
  bool isHovering3 = false;
  bool isHovering4 = false;
  bool isHovering5 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Discover the new world of Metaverse",
                        style: GoogleFonts.oxygen(
                            fontSize: MediaQuery.sizeOf(context).width * 0.02,
                            color: const Color(0xFFFF40E5))),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 24,
                    ),
                    Text(
                      "Explore, Create and\nConnect through the",
                      style: GoogleFonts.montaga(
                          fontSize: MediaQuery.sizeOf(context).width * 0.05,
                          color: Colors.white),
                    ),
                    Text(
                      "Corllel",
                      style: GoogleFonts.montaga(
                          fontSize: MediaQuery.sizeOf(context).width * 0.05,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 35,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur.\nAdipiscing etiam odio etiam vitae dictum",
                      style: GoogleFonts.oxygen(
                          fontSize: MediaQuery.sizeOf(context).width * 0.02,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
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
                          fontSize: MediaQuery.sizeOf(context).width * 0.01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 2.1,
                height: MediaQuery.sizeOf(context).height / 1.1,
                child: Image.asset(
                  'assets/images/k1.png',
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 8,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ScrollLoopAutoScroll(
                  duration: const Duration(seconds: 15),
                  scrollDirection: Axis.horizontal,
                  child: Row(children: <Widget>[
                    Text(
                      'Corllel',
                      style: GoogleFonts.montaga(
                          fontSize: MediaQuery.sizeOf(context).width * 0.02,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 40,
                    ),
                    Image.asset('assets/images/cube.png',
                        height: MediaQuery.sizeOf(context).height / 12),
                  ]),
                ),
              ]),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "About us",
                style: GoogleFonts.oxygen(
                  fontSize: MediaQuery.sizeOf(context).width * 0.04,
                  color: const Color(0xFFFF40E5),
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Sit suscipit pellentesque\nsuspendisse amet ornare varius ",
                textAlign: TextAlign.center,
                style: GoogleFonts.oxygen(
                    fontSize: MediaQuery.sizeOf(context).width * 0.01,
                    color: Colors.white),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width / 2.8,
                height: MediaQuery.sizeOf(context).height / 2.1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/j2.png"))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 35),
                  child: Column(
                    children: [
                      Text(
                        "Our Story",
                        style: GoogleFonts.oxygen(
                            fontSize: MediaQuery.sizeOf(context).width * 0.02,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 30,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet consectetur. Sit\nsuscipit pellentesque suspendisse amet ornare\nvarius tristique tempor neque. Curabitur varius\nscelerisque id lobortis eu bibendum nulla. Urna\nid mi tempus faucibus eros lacus vitae\ndignissim dignissim. Ac eros pretium quam\ntellus.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oxygen(
                            fontWeight: FontWeight.w100,
                            fontSize: MediaQuery.sizeOf(context).width * 0.012,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width / 2.8,
                height: MediaQuery.sizeOf(context).height / 2.1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/j2.png"))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 35),
                  child: Column(
                    children: [
                      Text(
                        "Our Mission",
                        style: GoogleFonts.oxygen(
                            fontSize: MediaQuery.sizeOf(context).width * 0.02,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 30,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet consectetur. Sit\nsuscipit pellentesque suspendisse amet ornare\nvarius tristique tempor neque. Curabitur varius\nscelerisque id lobortis eu bibendum nulla. Urna\nid mi tempus faucibus eros lacus vitae\ndignissim dignissim. Ac eros pretium quam\ntellus.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oxygen(
                            fontWeight: FontWeight.w100,
                            fontSize: MediaQuery.sizeOf(context).width * 0.012,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 13,
          ),
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 4.3,
                      child: _controller.value.isInitialized
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
                              child: Stack(children: [
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width / 4.3,
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15)),
                                        child: VideoPlayer(_controller)),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Visibility(
                                    visible: isHovering1ndVideo,
                                    child: FloatingActionButton(
                                      backgroundColor: Colors.transparent,
                                      onPressed: () {
                                        setState(() {
                                          _controller.value.isPlaying
                                              ? _controller.pause()
                                              : _controller.play();
                                        });
                                      },
                                      child: Icon(
                                        _controller.value.isPlaying
                                            ? Icons
                                                .pause_circle_outline_outlined
                                            : Icons.play_arrow_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            )
                          : Container(),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 15,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 4.3,
                      child: _controller2.value.isInitialized
                          ? MouseRegion(
                              onHover: (event) {
                                setState(() {
                                  isHovering2 = true;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  isHovering2 = false;
                                });
                              },
                              child: Stack(children: [
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width / 4.3,
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15)),
                                        child: VideoPlayer(_controller2)),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Visibility(
                                    visible: isHovering2,
                                    child: FloatingActionButton(
                                      backgroundColor: Colors.transparent,
                                      onPressed: () {
                                        setState(() {
                                          _controller2.value.isPlaying
                                              ? _controller2.pause()
                                              : _controller2.play();
                                        });
                                      },
                                      child: Icon(
                                        _controller2.value.isPlaying
                                            ? Icons
                                                .pause_circle_outline_outlined
                                            : Icons.play_arrow_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            )
                          : Container(),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 2.8,
                  // height: MediaQuery.sizeOf(context).height / 4,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _controller3.value.isInitialized
                            ? MouseRegion(
                                onHover: (event) {
                                  setState(() {
                                    isHovering3 = true;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    isHovering3 = false;
                                  });
                                },
                                child: Stack(children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width / 2.8,
                                    // height:
                                    //     MediaQuery.sizeOf(context).height / 1.8,
                                    child: AspectRatio(
                                      aspectRatio: 16 / 9,
                                      child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                          child: VideoPlayer(_controller3)),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Visibility(
                                      visible: isHovering3,
                                      child: FloatingActionButton(
                                        backgroundColor: Colors.transparent,
                                        onPressed: () {
                                          setState(() {
                                            _controller3.value.isPlaying
                                                ? _controller3.pause()
                                                : _controller3.play();
                                          });
                                        },
                                        child: Icon(
                                          _controller3.value.isPlaying
                                              ? Icons
                                                  .pause_circle_outline_outlined
                                              : Icons.play_arrow_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              )
                            : Container(),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 30,
                        ),
                        // Expanded(child: SizedBox()),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Experience the workspace in a whole new dimension",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montaga(
                              color: Colors.white,
                              fontSize: MediaQuery.sizeOf(context).width * 0.02,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 4.3,
                      child: _controller4.value.isInitialized
                          ? MouseRegion(
                              onHover: (event) {
                                setState(() {
                                  isHovering4 = true;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  isHovering4 = false;
                                });
                              },
                              child: Stack(children: [
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width / 4.3,
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15)),
                                        child: VideoPlayer(_controller4)),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Visibility(
                                    visible: isHovering4,
                                    child: FloatingActionButton(
                                      backgroundColor: Colors.transparent,
                                      onPressed: () {
                                        setState(() {
                                          _controller4.value.isPlaying
                                              ? _controller4.pause()
                                              : _controller4.play();
                                        });
                                      },
                                      child: Icon(
                                        _controller4.value.isPlaying
                                            ? Icons
                                                .pause_circle_outline_outlined
                                            : Icons.play_arrow_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            )
                          : Container(),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 15,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 4.3,
                      child: _controller5.value.isInitialized
                          ? MouseRegion(
                              onHover: (event) {
                                setState(() {
                                  isHovering5 = true;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  isHovering5 = false;
                                });
                              },
                              child: Stack(children: [
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width / 4.3,
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15)),
                                        child: VideoPlayer(_controller5)),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Visibility(
                                    visible: isHovering5,
                                    child: FloatingActionButton(
                                      backgroundColor: Colors.transparent,
                                      onPressed: () {
                                        setState(() {
                                          _controller5.value.isPlaying
                                              ? _controller5.pause()
                                              : _controller5.play();
                                        });
                                      },
                                      child: Icon(
                                        _controller5.value.isPlaying
                                            ? Icons
                                                .pause_circle_outline_outlined
                                            : Icons.play_arrow_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            )
                          : Container(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 42,
          ),
          Center(
            child: Text(
              "What can you do in corllel",
              style: GoogleFonts.oxygen(
                  fontSize: MediaQuery.sizeOf(context).width * 0.02,
                  color: const Color(0xFFFF40E5)),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 48,
          ),
          Center(
            child: Text(
              "Corllel offers a Variety of activities for users",
              style: GoogleFonts.montaga(
                  fontSize: MediaQuery.sizeOf(context).width * 0.023,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 14,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TestimonialRow(
                      imageName: 'assets/images/j3.png',
                      name: 'Customize your avatar',
                      text:
                          'Lorem ipsum dolor sit amet consectetur. Adipiscing\netiam odio etiam vitae dictum ',
                      discover: 'Discover More',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SizedBox()),
                        );
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 17,
                    ),
                    TestimonialRow(
                      imageName: 'assets/images/j3.png',
                      name: 'Create your workspace',
                      text:
                          'Lorem ipsum dolor sit amet consectetur. Adipiscing\netiam odio etiam vitae dictum ',
                      discover: 'Discover More',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SizedBox()),
                        );
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 17,
                    ),
                    TestimonialRow(
                      imageName: 'assets/images/j3.png',
                      name: 'Feel like real',
                      text:
                          'Lorem ipsum dolor sit amet consectetur. Adipiscing\netiam odio etiam vitae dictum ',
                      discover: 'Discover More',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SizedBox()),
                        );
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    TestimonialRow(
                      imageName: 'assets/images/j8.png',
                      name: 'Create VR experience',
                      text:
                          'Lorem ipsum dolor sit amet consectetur. Adipiscing\netiam odio etiam vitae dictum ',
                      discover: 'Discover More',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SizedBox()),
                        );
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 17,
                    ),
                    TestimonialRow(
                      imageName: 'assets/images/j3.png',
                      name: 'Customize your workspace ',
                      text:
                          'Lorem ipsum dolor sit amet consectetur. Adipiscing\netiam odio etiam vitae dictum ',
                      discover: 'Discover More',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SizedBox()),
                        );
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 17,
                    ),
                    TestimonialRow(
                      imageName: 'assets/images/j3.png',
                      name: 'Customize your avatar',
                      text:
                          'Lorem ipsum dolor sit amet consectetur. Adipiscing\netiam odio etiam vitae dictum ',
                      discover: 'Discover More',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SizedBox()),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 9,
          ),
          Container(
            height: MediaQuery.sizeOf(context).height / 1.5,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/images/j7.png"))),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 15,
                  ),
                  Text(
                    "Explore the virtual world",
                    style: GoogleFonts.montaga(
                        fontSize: MediaQuery.sizeOf(context).width * 0.02,
                        color: const Color(0xFFFF40E5)),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width / 5),
                    child: Text(
                      "Let's explore the virtual world through corllel ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montaga(
                          fontSize: MediaQuery.sizeOf(context).width * 0.04,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFFFF40E5),
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          side: const BorderSide(color: Color(0xFFFF40E5)),
                        )),
                    child: Text(
                      'Discover Now',
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFFFF40E5),
                        fontSize: MediaQuery.sizeOf(context).width * 0.012,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 7,
          ),
          Center(
            child: Text(
              "Building together",
              style: GoogleFonts.montaga(
                  fontSize: MediaQuery.sizeOf(context).width * 0.02,
                  color: const Color(0xFFFF40E5)),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 18,
          ),
          Center(
            child: Text(
              "See how creators are making the\nmetaverse a reality",
              textAlign: TextAlign.center,
              style: GoogleFonts.oxygen(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.sizeOf(context).width * 0.023,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width / 4.3,
                margin: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/j4.png',
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width / 3.1,
                margin: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/j5.png',
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width / 4.3,
                margin: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/j6.png',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 8,
          ),
          const FooterSection()
        ]),
      ),
    );
  }
}

class TestimonialRow extends StatelessWidget {
  final String imageName;
  final String name;
  final String text;
  final String discover;
  final VoidCallback? onTap;

  const TestimonialRow({
    super.key,
    required this.imageName,
    required this.name,
    required this.text,
    required this.discover,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Image.asset(
            imageName,
            height: MediaQuery.sizeOf(context).height / 11,
          ),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width / 52),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.oxygen(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.sizeOf(context).width * 0.014,
                color: Colors.white,
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height / 55),
            Text(
              text,
              style: GoogleFonts.oxygen(
                fontSize: MediaQuery.sizeOf(context).width * 0.011,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height / 60),
            Row(
              children: [
                InkWell(
                  onTap: onTap,
                  child: Text(
                    discover,
                    style: GoogleFonts.oxygen(
                        fontSize: MediaQuery.sizeOf(context).width * 0.01,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFFF40E5)),
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width / 84),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255))),
                    child: Icon(Icons.arrow_forward,
                        size: MediaQuery.sizeOf(context).width * 0.01,
                        color: Colors.white)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
