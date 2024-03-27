// ignore_for_file: prefer_typing_uninitialized_variables, unused_field, unused_element

import 'dart:async';

import 'package:corllel/Common_Screens/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class GamingScreen extends StatefulWidget {
  const GamingScreen({Key? key}) : super(key: key);

  @override
  State<GamingScreen> createState() => _GamingScreenState();
}

bool _isHovered = false;
bool _isHovered1 = false;

bool isHovering1ndVideo = false;
bool isHovering2ndVideo = false;
bool isHoveringBigVideo = false;

class _GamingScreenState extends State<GamingScreen> {
  final double _scrollSpeed = 20.0;
  late ScrollController _scrollController1;
  bool _reverse = false;
  int currentIndex = 0;
  late VideoPlayerController _controller;
  late VideoPlayerController _controller1;
  late VideoPlayerController bigScreenVideoController;
  late bool _isPlaying1;
  late bool _isPlaying2;
  late bool _isPlaying3;
  late ScrollController _scrollController;


  

  void _startScrolling() {
    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      _scrollController1.animateTo(
        _reverse ? _scrollController1.position.maxScrollExtent : 0.0,
        duration: Duration(milliseconds: (_reverse ? _scrollSpeed * _scrollController1.position.maxScrollExtent : _scrollSpeed).toInt()),
        curve: Curves.linear,
      ).then((_) {
        _reverse = !_reverse;
        _startScrolling();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    // ignore: deprecated_member_use
    _controller =
        // ignore: deprecated_member_use
        VideoPlayerController.network('assets/images/shortvideo1.mp4')
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
          });
    super.initState();
    _controller1 =
        // ignore: deprecated_member_use
        VideoPlayerController.network('assets/images/shortvideo2.mp4')
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
          });
    super.initState();
    bigScreenVideoController =
        // ignore: deprecated_member_use
        VideoPlayerController.network('assets/images/bigscreen1.mp4')
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
          });
    _isPlaying1 = false;
    _isPlaying2 = false;
    _isPlaying3 = false;
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScroll);

    super.initState();
    _scrollController1 = ScrollController();
    _startScrolling();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    bigScreenVideoController.dispose();
    // Dispose ScrollController
    _scrollController.dispose();
    super.dispose();

    _scrollController1.dispose();
    super.dispose();
  }

  void _playPauseVideo1() {
    if (_isPlaying1 = true) {
      _controller1.pause();
      bigScreenVideoController.pause();
    }
  }

  void _playPauseVideo2() {
    if (_isPlaying2 = true) {
      _controller.pause();
      bigScreenVideoController.pause();
    }
  }

  void _playPauseVideo3() {
    if (_isPlaying2 = true) {
      _controller.pause();
      _controller1.pause();
    }
  }

  void _handleScroll() {
    // Check if any video is playing and whether it is visible on the screen
    if ((_isPlaying1 || _isPlaying2 || _isPlaying3) &&
        mounted &&
        _scrollController.hasClients) {
      // Check if the video widgets are within the viewport
      final double bottomPosition1 = _scrollController.offset +
          _scrollController.position.viewportDimension;
      final double bottomPosition2 = _scrollController.offset +
          _scrollController.position.viewportDimension;
      final double bottomPosition3 = _scrollController.offset +
          _scrollController.position.viewportDimension;
      final double topPosition1 = _scrollController.offset;
      final double topPosition2 = _scrollController.offset;
      final double topPosition3 = _scrollController.offset;

      // Check if the video is outside the viewport
      if ((topPosition1 > _controller.value.size.height / 2 &&
              bottomPosition1 > _controller.value.size.height / 2) ||
          (topPosition2 > _controller1.value.size.height &&
              bottomPosition2 > _controller1.value.size.height) ||
          (topPosition3 > bigScreenVideoController.value.size.height &&
              bottomPosition3 > bigScreenVideoController.value.size.height)) {
        // If the video is outside the viewport, pause it
        setState(() {
          _isPlaying1 = false;
          _isPlaying2 = false;
          _isPlaying3 = false;
          _controller.pause();
          _controller1.pause();
          bigScreenVideoController.pause();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            SizedBox(
              height: height / 15,
            ),
            Center(
              child: Text(
                'Discover the new world',
                style: GoogleFonts.oxygen(
                  color: const Color(0xffFF40E5),
                  fontSize: width * 0.016,
                ),
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            Center(
              child: SizedBox(
                width: width / 2,
                child: Text(
                  'Where Every Move Reunites Destiny',
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montaga(
                    color: const Color(0xffF8F8F8),
                    fontSize: width * 0.040,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 25,
            ),
            ClipPath(
              clipper: MyClipper(),
              // ignore: avoid_unnecessary_containers
              child: Container(
                // decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController1,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/Vector1.png',
                            height: height / 2,
                          ),
                          SizedBox(width: width / 25),
                          Image.asset(
                            'assets/images/Vector2.png',
                            height: height / 2,
                          ),
                          SizedBox(width: width / 25),
                          Image.asset(
                            'assets/images/Vector3.png',
                            fit: BoxFit.fill,
                            height: height / 2,
                            width: width / 5,
                          ),
                          SizedBox(width: width / 25),
                          Image.asset('assets/images/Vector4.png',
                              height: height / 2),
                          SizedBox(width: width / 25),
                          Image.asset('assets/images/Vector5.png',
                              height: height / 2),
                              SizedBox(width: width / 25),
                          Image.asset('assets/images/Vector6.png',
                              height: height / 2),
                              SizedBox(width: width / 25),
                          Image.asset('assets/images/Vector7.png',
                              height: height / 2),
                              SizedBox(width: width / 25),
                          Image.asset('assets/images/Vector8.png',
                              height: height / 2),
                              SizedBox(width: width / 25),
                          Image.asset('assets/images/Vector9.png',
                              height: height / 2),
                          // SizedBox(width: width / 25),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height / 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff1F1F1F),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/experience.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.white,
                ),
                height: height / 1.5,
                width: width / 1.1,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        color: Colors.black.withOpacity(0.2),
                        child: Padding(
                          padding: EdgeInsets.only(top: 0, right: width / 6),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Experience the people and things around us',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montaga(
                                      color: const Color(0xffF8F8F8),
                                      fontSize: width * 0.023,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(width: width/1.8,
                                  child: Text(
                                    'Enter the battlefield and play interactive games, explore and make your own avatar. Engage in epic adventures over a variety of virtual environments, unleash your creativity, and connect with gamers worldwide.  ',
                                    maxLines: 8,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.oxygen(
                                      color: const Color(0xffF8F8F8),
                                      fontSize: width * 0.013,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            Padding(
              padding:  EdgeInsets.only(left: width/20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _controller.value.isInitialized
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
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xffFF40E5), width: 3),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xffFF40E5),
                                    offset: Offset(.0, .0),
                                    blurRadius: 15.0,
                                    spreadRadius: 1.0,
                                  ), //BoxShadow
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black),
                            child: Stack(children: [
                              SizedBox(
                                width: width / 4.5,
                                child: AspectRatio(
                                  aspectRatio: 16 / 9,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                    child: _buildVideoPlayer(_controller,
                                        _isPlaying1, _playPauseVideo1),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Visibility(
                                  visible: !isHovering1ndVideo &&
                                      !_controller.value.isPlaying,
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.transparent,
                                    onPressed: () {
                                      _playPauseVideo1();
                                      setState(() {
                                        _controller.value.isPlaying
                                            ? _controller.pause()
                                            : _controller.play();
                                      });
                                    },
                                    child: Icon(
                                      _controller.value.isPlaying
                                          ? Icons.pause_circle_outline_outlined
                                          : Icons.play_arrow_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Visibility(
                                  visible: isHovering1ndVideo,
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.transparent,
                                    onPressed: () {
                                      _playPauseVideo1();
                                      setState(() {
                                        _controller.value.isPlaying
                                            ? _controller.pause()
                                            : _controller.play();
                                      });
                                    },
                                    child: Icon(
                                      _controller.value.isPlaying
                                          ? Icons.pause_circle_outline_outlined
                                          : Icons.play_arrow_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        )
                      : Container(),
                  SizedBox(
                    width: width / 70,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: width / 16),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/Outlines.png',
                          width: width / 8,
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 90.0, right: width / 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Join us as we explore the future',
                          style: GoogleFonts.montaga(
                            color: const Color(0xffFF40E5),
                            fontSize: width * 0.023,
                          ),
                        ),
                        SizedBox(
                          height: height / 28,
                        ),
                        SizedBox(width: width/3.5,
                          child: Text(
                            'A storm brews on a journey to the lost continents of Kumarikandam, Atlantis, and more, where the ultimate Battle Royale unfolds. Survive amidst the ruins and dangers of these ancient lands, but beware, for destruction looms. Only those who find the Mysterious Item can unlock the castle and claim victory before the continents meet their demise.',maxLines: 20,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.oxygen(
                                color: const Color(0xffFFFFFF),
                                fontSize: width * 0.011,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width / 18, top: width / 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Investigate the unimageable area',
                          style: GoogleFonts.montaga(
                            color: const Color(0xffFF40E5),
                            fontSize: width * 0.023,
                          ),
                        ),
                        SizedBox(
                          height: height / 28,
                        ),
                        SizedBox(width: width/3,
                          child: Text(
                            "Embark on a journey through time with our map of the world's oldest places. Explore ancient civilizations, archaeological wonders, and historic landmarks that have stood the test of time. immerse yourself in the rich tapestry of human history and uncover the secrets of our ancient past",maxLines: 15,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.oxygen(
                                color: const Color(0xffFFFFFF),
                                fontSize: width * 0.011,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Image.asset(
                      'assets/images/Outline_right.png',
                      width: width / 8,
                      // height: height/2,
                    ),
                  ),
                  SizedBox(
                    width: width / 70,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      right: width / 20,
                    ),
                    child: _controller1.value.isInitialized
                        ? Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: MouseRegion(
                              onHover: (event) {
                                setState(() {
                                  isHovering2ndVideo = true;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  isHovering2ndVideo = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffFF40E5), width: 3),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xffFF40E5),
                                      offset: Offset(.0, .0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0,
                                    ), //BoxShadow
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black,
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      width: width / 4.5,
                                      child: AspectRatio(
                                        aspectRatio: 16 / 9,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          child: _buildVideoPlayer(_controller1,
                                              _isPlaying2, _playPauseVideo2),
                                        ),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Visibility(
                                        visible: !isHovering2ndVideo &&
                                            !_controller1.value
                                                .isPlaying, // Show the button only when hovering

                                        child: FloatingActionButton(
                                          backgroundColor: Colors.transparent,
                                          onPressed: () {
                                            _playPauseVideo2();
                                            setState(() {
                                              _controller1.value.isPlaying
                                                  ? _controller1.pause()
                                                  : _controller1.play();
                                            });
                                          },
                                          child: Icon(
                                            _controller1.value.isPlaying
                                                ? Icons
                                                    .pause_circle_outline_outlined
                                                : Icons.play_arrow_rounded,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Visibility(
                                        visible: isHovering2ndVideo,
                                        child: FloatingActionButton(
                                          backgroundColor: Colors.transparent,
                                          onPressed: () {
                                            _playPauseVideo2();
                                            setState(() {
                                              _controller1.value.isPlaying
                                                  ? _controller1.pause()
                                                  : _controller1.play();
                                            });
                                          },
                                          child: Icon(
                                            _controller1.value.isPlaying
                                                ? Icons
                                                    .pause_circle_outline_outlined
                                                : Icons.play_arrow_rounded,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        // ignore: avoid_unnecessary_containers
                        : Container(
                            child: const Text("ERROR"),
                          ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height / 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff1F1F1F),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/explore.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.white,
                ),
                height: height / 1.9,
                width: width / 1.1,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        color: Colors.black.withOpacity(0.2),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0, right: 00),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Explore the brand-new Metaverse universe',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.oxygen(
                                    color: const Color(0xffFF40E5),
                                    fontSize: width * 0.013,
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  'The future of connection will be in 3D & AR VR',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montaga(
                                    color: const Color(0xffF8F8F8),
                                    fontSize: width * 0.019,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(width: width/2.1,
                                  child: Text(
                                    'In virtual worlds that imitate physical settings, users can connect. These areas, which could be anything from magical landscapes to future metropolis, offer a visually stimulating setting for social interactions',maxLines: 10,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.oxygen(
                                      color: const Color(0xffF8F8F8),
                                      fontSize: width * 0.016,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(
              height: height/8,
            ),
            bigScreenVideoController.value.isInitialized
                ? MouseRegion(
                    onHover: (event) {
                      setState(() {
                        isHoveringBigVideo = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        isHoveringBigVideo = false;
                      });
                    },
                    child: Container(
                      width: width / 1,
                      height: height / 1,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent, width: 3),
                        // borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: width,
                            child: AspectRatio(
                              aspectRatio: 16 / 10,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                child: _buildVideoPlayer(
                                    bigScreenVideoController,
                                    _isPlaying3,
                                    _playPauseVideo3),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Visibility(
                              visible: !isHoveringBigVideo &&
                                  !bigScreenVideoController.value.isPlaying,
                              child: FloatingActionButton(
                                backgroundColor: Colors.transparent,
                                onPressed: () {
                                  _playPauseVideo3();
                                  setState(() {
                                    bigScreenVideoController.value.isPlaying
                                        ? bigScreenVideoController.pause()
                                        : bigScreenVideoController.play();
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Icon(
                                    bigScreenVideoController.value.isPlaying
                                        ? Icons.pause_circle_outline_outlined
                                        : Icons.play_circle_outline_outlined,
                                    // size: width / 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Visibility(
                              visible: isHoveringBigVideo,
                              child: FloatingActionButton(
                                backgroundColor: Colors.transparent,
                                onPressed: () {
                                  _playPauseVideo3();
                                  setState(() {
                                    bigScreenVideoController.value.isPlaying
                                        ? bigScreenVideoController.pause()
                                        : bigScreenVideoController.play();
                                  });
                                },
                                child: Icon(
                                  bigScreenVideoController.value.isPlaying
                                      ? Icons.pause_circle_outline_outlined
                                      : Icons.play_arrow_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                // ignore: avoid_unnecessary_containers
                : Container(
                    child: const Text("ERROR"),
                  ),
            const FooterSection()
          ],
        ),
      ),
    );
  }

  Widget _buildVideoPlayer(VideoPlayerController controller, bool isPlaying,
      VoidCallback playPauseCallback) {
    return Visibility(
      visible: controller.value.isInitialized,
      child: AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: Stack(
          children: [
            VideoPlayer(controller),
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  playPauseCallback();
                  setState(() {
                    isPlaying ? controller.pause() : controller.play();
                  });
                },
                // Adding a transparent layer to capture the tap for play/pause
                child: Container(color: Colors.transparent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height / 1.18, size.width / 2, size.height / 1.18);
    path.quadraticBezierTo(
        3 * size.width / 4, size.height / 1.18, size.width, size.height);
    path.lineTo(size.width,
        size.height / 4); // Adjusted to start from the top-right corner

    path.quadraticBezierTo(
        3 * size.width / 2, size.height / 2, size.width / 1, size.height / 20);
    path.quadraticBezierTo(size.width / 2, size.height / 4, size.height,
        size.height / 10); // Added curve to the top-left corner

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
