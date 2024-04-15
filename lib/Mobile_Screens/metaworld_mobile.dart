import 'package:corllel/Mobile_Screens/footer_mobile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class MetaWorldMobileScreen extends StatefulWidget {
  const MetaWorldMobileScreen({super.key});

  @override
  State<MetaWorldMobileScreen> createState() => _MetaWorldScreenState();
}

bool isHovering1ndVideo = false;
bool isHovering1ndVideo2 = false;

class _MetaWorldScreenState extends State<MetaWorldMobileScreen> {
  final LinearGradient _gradient = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 195, 64, 255),
      Color(0xff0058CA),
    ],
  );

  final LinearGradient _gradient2 = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 64, 191, 255),
      Color.fromARGB(255, 0, 152, 203),
    ],
  );

  late VideoPlayerController _videoController1;
  late VideoPlayerController _videoController2;
  late bool _isPlaying1;
  late bool _isPlaying2;
  late ScrollController _scrollController;

  late ScrollController scrollControllerBottom;

  @override
  void initState() {
    super.initState();

    scrollControllerBottom = ScrollController();

    _videoController1 =
        // ignore: deprecated_member_use
        VideoPlayerController.network('assets/images/digamend.mp4')
          ..initialize().then((_) {
            setState(() {});
          });
    super.initState();
    _videoController2 =
        // ignore: deprecated_member_use
        VideoPlayerController.network('assets/images/digamend.mp4')
          ..initialize().then((_) {
            setState(() {});
          });

    _isPlaying1 = false;
    _isPlaying2 = false;

    _scrollController = ScrollController();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _videoController1.dispose();
    _videoController2.dispose();
    // Dispose ScrollController
    _scrollController.dispose();
    super.dispose();
  }

  void _playPauseVideo1() {
    if (_isPlaying1 = true) {
      _videoController2.pause();
    }
  }

  void _playPauseVideo2() {
    if (_isPlaying2 = true) {
      _videoController1.pause();
    }
  }

  void _handleScroll() {
    // Check if any video is playing and whether it is visible on the screen
    if ((_isPlaying1 || _isPlaying2) &&
        mounted &&
        _scrollController.hasClients) {
      // Check if the video widgets are within the viewport
      final double bottomPosition1 = _scrollController.offset +
          _scrollController.position.viewportDimension;
      final double bottomPosition2 = _scrollController.offset +
          _scrollController.position.viewportDimension;
      // final double bottomPosition3 = _scrollController.offset +
      //     _scrollController.position.viewportDimension;
      final double topPosition1 = _scrollController.offset;
      final double topPosition2 = _scrollController.offset;
      // final double topPosition3 = _scrollController.offset;

      // Check if the video is outside the viewport
      if ((topPosition1 > _videoController1.value.size.height / 2 &&
              bottomPosition1 > _videoController1.value.size.height / 2) ||
          (topPosition2 > _videoController2.value.size.height &&
              bottomPosition2 > _videoController2.value.size.height)) {
        // If the video is outside the viewport, pause it
        setState(() {
          _isPlaying1 = false;
          _isPlaying2 = false;
          _videoController1.pause();
          _videoController2.pause();
        });
      }
    }
  }

  void _scrollToYellowContainer() {
    final double offset = scrollControllerBottom.position.maxScrollExtent;
    scrollControllerBottom.animateTo(
      offset,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Corllel',
          style: GoogleFonts.montaga(
            color: Colors.white,
            fontSize: MediaQuery.sizeOf(context).width * 0.04,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 1.0),
        child: Container(
          width:
              MediaQuery.of(context).size.width * 0.6, // adjust width if needed
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              border: Border(
                  right: BorderSide(
                      color: Color.fromARGB(255, 141, 139, 139), width: 1),
                  bottom: BorderSide(
                      color: Color.fromARGB(255, 141, 139, 139), width: 1),
                  top: BorderSide(
                      color: Color.fromARGB(255, 141, 139, 139), width: 1))
              // border: Border.all(
              //     color: const Color.fromARGB(255, 155, 155, 155), width: 1),
              ),
          child: Drawer(
            backgroundColor: Colors.transparent,
            child: ListView(
              // padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  title: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.close, color: Colors.white),
                    ],
                  ),
                  onTap: () {
                    // Close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Home',
                    style: GoogleFonts.montaga(
                        fontSize: MediaQuery.sizeOf(context).width * 0.035,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  onTap: () {
                    // Close the drawer
                    Navigator.pop(context);
                    // Navigate to the Home screen
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  title: Text('Metaworld',
                      style: GoogleFonts.montaga(
                          fontSize: MediaQuery.sizeOf(context).width * 0.035,
                          color: Color(0xFFFF40E5))),
                  onTap: () {
                    // Close the drawer
                    Navigator.pop(context);
                    // Navigate to the Settings screen
                    Navigator.pushNamed(context, '/metaworld');
                  },
                ),
                ListTile(
                  title: Text('Gaming',
                      style: GoogleFonts.montaga(
                          fontSize: MediaQuery.sizeOf(context).width * 0.035,
                          color: Color.fromARGB(255, 255, 255, 255))),
                  onTap: () {
                    // Close the drawer
                    Navigator.pop(context);
                    // Navigate to the Settings screen
                    Navigator.pushNamed(context, '/gaming');
                  },
                ),
                ListTile(
                  title: Text('Contact',
                      style: GoogleFonts.montaga(
                          fontSize: MediaQuery.sizeOf(context).width * 0.035,
                          color: const Color.fromARGB(255, 255, 255, 255))),
                  onTap: () {
                    Navigator.pop(context);
                    _scrollToYellowContainer();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollControllerBottom,
        child: SizedBox(
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.03, height * 0.09, width * 0.03, height * 0.009),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/girlwithstar.png',
                        width: width / 2,
                      ),
                      SizedBox(
                        width: width * 0.006,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: width / 2.5,
                            child: Text(
                                'Virtual universe of endless exploration',
                                style: GoogleFonts.montaga(
                                    color: Colors.white,
                                    fontSize: width * 0.045)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.09,
                        // height: height/0.09,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What is',
                            style: GoogleFonts.montaga(
                                color: Colors.white, fontSize: width * 0.052),
                          ),
                          ShaderMask(
                            shaderCallback: (Rect rect) {
                              return _gradient.createShader(rect);
                            },
                            child: Text(
                              'Metaworld',
                              // textAlign: TextAlign.left,
                              style: GoogleFonts.montaga(
                                  color: Colors.white, fontSize: width * 0.05),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width / 10,
                      ),
                      Image.asset(
                        'assets/images/metaworldimage.png',
                        width: width / 2.5,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    width: width / 1.14,
                    child: Text(
                      'Persistent virtual world where users can experience the real world in virtual space. This is created by the convergence of virtually enhanced physical reality and physically persistent virtual world.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.oxygen(
                          color: const Color.fromARGB(255, 214, 209, 209),
                          fontSize: width * 0.035,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    width: width / 1.14,
                    child: Text(
                      ' Meta world refer to philosophical or theoretical concepts beyond physical reality such as alternate dimensions, parallel universe or simulated realities.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.oxygen(
                          color: const Color.fromARGB(255, 214, 209, 209),
                          fontSize: width * 0.035,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.09,
                      ),
                      Text(
                        'How Does The',
                        style: GoogleFonts.montaga(
                            color: Colors.white, fontSize: width * 0.05),
                      ),
                      ShaderMask(
                        shaderCallback: (Rect rect) {
                          return _gradient2.createShader(rect);
                        },
                        child: Text(
                          ' Metaworld Works',
                          style: GoogleFonts.montaga(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      width: width / 2.5,
                      decoration: const BoxDecoration(
                        // color: Colors.blueAccent,
                        color: Color(0xff090823),

                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.025,
                            top: height * 0.009,
                            bottom: height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/image3.png',
                              width: width / 2.8,
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              'Virtual environment',
                              style: GoogleFonts.oxygen(
                                  fontSize: width * 0.027, color: Colors.white),
                            ),
                            SizedBox(
                              height: height * 0.009,
                            ),
                            SizedBox(
                              width: width / 3,
                              child: Text(
                                'A digital space designed to mimic aspects of the physical world.',
                                style: GoogleFonts.oxygen(
                                    fontSize: width * 0.023,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: width * 0.04,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Container(
                      // height: height / 3.7,
                      width: width / 2.5,
                      decoration: const BoxDecoration(
                        // color: Colors.blueAccent,
                        color: Color(0xff090823),

                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.025,
                            top: height * 0.009,
                            bottom: height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/image4.png',
                              width: width / 2.8,
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              'Avatars',
                              style: GoogleFonts.oxygen(
                                  fontSize: width * 0.027, color: Colors.white),
                            ),
                            SizedBox(
                              height: height * 0.009,
                            ),
                            SizedBox(
                              width: width / 2.2,
                              child: Text(
                                'Customizable digital avatars of themself that can move, interact and communicate within the metaworld. ',
                                style: GoogleFonts.oxygen(
                                    fontSize: width * 0.023,
                                    color: Colors.white),
                              ),
                            ),
                            // SizedBox(
                            //   height: width * 0.02,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: height * 0.013,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      width: width / 2.5,
                      decoration: const BoxDecoration(
                        // color: Colors.blueAccent,
                        color: Color(0xff090823),

                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.025,
                            top: height * 0.009,
                            bottom: height * 0.035),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/image5.png',
                              width: width / 2.8,
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            SizedBox(
                              width: width / 3,
                              child: Text(
                                'Entertainment & Activities',
                                style: GoogleFonts.oxygen(
                                    fontSize: width * 0.027,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.009,
                            ),
                            SizedBox(
                              width: width / 3,
                              child: Text(
                                'Experience the wonders of the world, monuments, famous tourist spots etc.',
                                style: GoogleFonts.oxygen(
                                    fontSize: width * 0.023,
                                    color: Colors.white),
                              ),
                            ),
                            // SizedBox(
                            //   height: width * 0.05,
                            // )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Container(
                      // height: height / 3.7,
                      width: width / 2.5,
                      decoration: const BoxDecoration(
                        // color: Colors.blueAccent,
                        color: Color(0xff090823),

                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.025,
                            top: height * 0.009,
                            bottom: height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/image6.png',
                              width: width / 2.8,
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              'Privacy & Security',
                              style: GoogleFonts.oxygen(
                                  fontSize: width * 0.027, color: Colors.white),
                            ),
                            SizedBox(
                              height: height * 0.009,
                            ),
                            SizedBox(
                              width: width / 2.7,
                              child: Text(
                                'Robust privacy measure to protect and ensure a safe and enjoyable experience free from malicious activity',
                                style: GoogleFonts.oxygen(
                                    fontSize: width * 0.023,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: height * 0.013,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      width: width / 2.5,
                      decoration: const BoxDecoration(
                        // color: Colors.blueAccent,
                        color: Color(0xff090823),

                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.025,
                            top: height * 0.009,
                            bottom: height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/image7.png',
                              width: width / 2.8,
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              'Scalability & Inter Operability',
                              style: GoogleFonts.oxygen(
                                  fontSize: width * 0.0251,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: height * 0.009,
                            ),
                            SizedBox(
                              width: width / 2.9,
                              child: Text(
                                'A combination of technical innovation and collaboration to create a seamless virtual eco-system .',
                                style: GoogleFonts.oxygen(
                                  fontSize: width * 0.023,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: width * 0.02,
                            // )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Container(
                      width: width / 2.5,
                      decoration: const BoxDecoration(
                        // color: Colors.blueAccent,
                        color: Color(0xff090823),

                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.025,
                            top: height * 0.009,
                            bottom: height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/image8.png',
                              width: width / 2.8,
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              'In World Purchase',
                              style: GoogleFonts.oxygen(
                                  fontSize: width * 0.027, color: Colors.white),
                            ),
                            SizedBox(
                              height: height * 0.009,
                            ),
                            SizedBox(
                              width: width / 2.2,
                              child: Text(
                                'In-world purchases can include buying virtual items like skins, costumes, as well as virtual currency .',
                                style: GoogleFonts.oxygen(
                                    fontSize: width * 0.023,
                                    color: Colors.white),
                              ),
                            ),
                            // SizedBox(
                            //   height: width * 0.02,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.07,
                          ),
                          Text(
                            'Our Latest',
                            style: GoogleFonts.oxygen(
                                color: Colors.white, fontSize: width * 0.04),
                          ),
                          Text(
                            ' Works',
                            style: GoogleFonts.oxygen(
                                color: Colors.white, fontSize: width * 0.04),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(left: width / 10),
                          child: Row(children: [
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
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: width / 1.3,
                                          decoration: BoxDecoration(
                                            border: const Border.fromBorderSide(
                                              BorderSide(
                                                width: 3,
                                              ),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xffF86CF8),
                                                Color(0xff64CEF5)
                                              ],
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsets.all(width / 320),
                                            child: AspectRatio(
                                              aspectRatio: 16 / 9,
                                              child: ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                                child: _buildVideoPlayer(
                                                    _videoController1,
                                                    _isPlaying1,
                                                    _playPauseVideo1),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: Visibility(
                                            visible: !isHovering1ndVideo &&
                                                !_videoController1
                                                    .value.isPlaying,
                                            child: FloatingActionButton(
                                              backgroundColor:
                                                  Colors.transparent,
                                              onPressed: () {
                                                _playPauseVideo1();
                                                setState(() {
                                                  _videoController1.play();
                                                });
                                              },
                                              child: Icon(
                                                _videoController1
                                                        .value.isPlaying
                                                    ? Icons
                                                        .pause_circle_outline_outlined
                                                    : Icons
                                                        .play_circle_fill_rounded,
                                                size: width * 0.04,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: Visibility(
                                            visible: isHovering1ndVideo,
                                            child: FloatingActionButton(
                                              backgroundColor:
                                                  Colors.transparent,
                                              onPressed: () {
                                                _playPauseVideo1();
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
                                                size: width * 0.04,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(),
                            SizedBox(
                              width: width / 30,
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
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.3,
                                          decoration: BoxDecoration(
                                            // BorderRadius.circular(15),
                                            border: const Border.fromBorderSide(
                                              BorderSide(
                                                width: 3,
                                              ),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: const LinearGradient(
                                                colors: [
                                                  Color(0xffF86CF8),
                                                  Color(0xff64CEF5),
                                                ],
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.all(width / 320),
                                              child: AspectRatio(
                                                aspectRatio: 16 / 9,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  child: _buildVideoPlayer(
                                                      _videoController2,
                                                      _isPlaying2,
                                                      _playPauseVideo2),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: Visibility(
                                            visible: !isHovering1ndVideo2 &&
                                                !_videoController2
                                                    .value.isPlaying,
                                            child: FloatingActionButton(
                                              backgroundColor:
                                                  Colors.transparent,
                                              onPressed: () {
                                                _playPauseVideo2();
                                                setState(() {
                                                  _videoController2.play();
                                                });
                                              },
                                              child: Icon(
                                                _videoController2
                                                        .value.isPlaying
                                                    ? Icons
                                                        .pause_circle_outline_outlined
                                                    : Icons
                                                        .play_circle_fill_rounded,
                                                size: width * 0.04,
                                                color: Colors.white70,
                                              ),
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
                                                _playPauseVideo2();
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
                                                size: width * 0.04,
                                                color: Colors.white70,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container()
                          ]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const FooterMobile()
                ],
              ),
            ),
          ),
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
