// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, unused_field, unused_local_variable

import 'package:corllel/Common_Screens/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class MetaWorldScreen extends StatefulWidget {
  const MetaWorldScreen({super.key});
  @override
  State<MetaWorldScreen> createState() => _MetaWorldScreenState();
}

bool isHovering1ndVideo = false;
bool isHovering1ndVideo2 = false;

class _MetaWorldScreenState extends State<MetaWorldScreen> {
  final LinearGradient _gradient = LinearGradient(
    colors: <Color>[Color.fromARGB(255, 195, 64, 255), Color(0xff0058CA)],
  );

  final LinearGradient _gradient2 = LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 64, 191, 255),
      Color.fromARGB(255, 0, 152, 203)
    ],
  );

  late VideoPlayerController _videoController1;
  late VideoPlayerController _videoController2;
  late bool _isPlaying1;
  late bool _isPlaying2;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
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
      final double bottomPosition3 = _scrollController.offset +
          _scrollController.position.viewportDimension;
      final double topPosition1 = _scrollController.offset;
      final double topPosition2 = _scrollController.offset;
      final double topPosition3 = _scrollController.offset;

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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width / 20,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: height / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/girlwithstar.png',
                      width: width / 2.5,
                    ),
                    SizedBox(width: width / 22),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width / 2.2,
                          child: Text(
                            maxLines: 4,
                            'Virtual universe of endless exploration',
                            style: GoogleFonts.montaga(
                                color: Colors.white, fontSize: width * 0.046),
                          ),
                        ),
                        
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.001),
            Row(
              children: [
                SizedBox(width: width / 20),
                Image.asset(
                  'assets/images/metaworldimage.png',
                  width: width / 2.6,
                ),
                SizedBox(
                  width: width / 7,
                  
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
                          style: GoogleFonts.montaga(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.024,
                          ),
                        ),
                        ShaderMask(
                          shaderCallback: (Rect rect) {
                            return _gradient.createShader(rect);
                          },
                          child: Text(
                            ' Metaworld',
                            style: GoogleFonts.montaga(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.024,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.016,
                    ),
                    SizedBox(
                      width: width / 2.6,
                      child: Text(
                        "Persistent virtual world where users can experience the real world in virtual space. This is created by the convergence of virtually enhanced physical reality and physically persistent virtual world.",
                        
                        style: GoogleFonts.oxygen(
                            color: Colors.white,
                            fontSize: width * 0.013,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                    SizedBox(
                      height: height / 20,
                    ),
                    SizedBox(
                      width: width / 2.7,
                      child: Text(
                        "Meta world refer to philosophical or theoretical concepts beyond physical reality such as alternate dimensions, parallel universe or simulated realities.",
                        maxLines: 5,
                        style: GoogleFonts.oxygen(
                          color: Colors.white,
                          fontSize: width * 0.013,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    
                  ],
                )
              ],
            ),
            SizedBox(
              height: height / 6,
            ),
            Column(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'How Does The ',
                        style: GoogleFonts.montaga(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: width * 0.028),
                      ),
                      ShaderMask(
                        shaderCallback: (Rect rect) {
                          return _gradient.createShader(rect);
                        },
                        child: Text(
                          'Metaworld Works',
                          style: GoogleFonts.montaga(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.028),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: height / 1.55,
                  child: Container(
                    width: width / 4,
                    decoration: BoxDecoration(
                      color: Color(0xff090823),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width / 75, top: height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/image3.png',
                            width: width / 4.5,
                          ),
                          SizedBox(
                            height: height / 55,
                          ),
                          Text(
                            'Virtual environment',
                            style: GoogleFonts.oxygen(
                                color: Colors.white, fontSize: width * 0.015),
                          ),
                          // Padding(padding: EdgeInsets.only(top: height / 45)),
                          SizedBox(height: height * 0.012),
                          SizedBox(
                            width: width / 4.8,
                            child: Text(
                              'A digital space designed to mimic aspects of the physical world.',
                              style: GoogleFonts.oxygen(
                                  color: Colors.white, fontSize: width * 0.010),
                            ),
                          ),

                          
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width / 38),
                SizedBox(
                  height: height / 1.55,
                  child: Container(
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Color(0xff090823),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width / 75, top: height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/image4.png',
                            width: width / 4.5,
                          ),
                          SizedBox(
                            height: height / 35,
                          ),
                          Text(
                            'Avatars',
                            style: GoogleFonts.oxygen(
                                color: Colors.white, fontSize: width * 0.015),
                          ),
                          SizedBox(
                            height: height * 0.012,
                          ),
                          SizedBox(
                            width: width / 4.6,
                            child: Text(
                              'Customizable digital avatars of themself that can move, interact and communicate within the metaworld. ',
                              style: GoogleFonts.oxygen(
                                  color: Colors.white, fontSize: width * 0.010),
                            ),
                          ),

                          
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width / 38,
                ),
                SizedBox(
                  height: height / 1.55,
                  child: Container(
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Color(0xff090823),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width / 75, top: height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/image5.png',
                            width: width / 4.5,
                          ),
                          SizedBox(
                            height: height / 35,
                          ),
                          Text(
                            'Entertainment & Activities',
                            style: GoogleFonts.oxygen(
                                color: Colors.white, fontSize: width * 0.015),
                          ),
                          SizedBox(
                            height: height * 0.012,
                          ),
                          SizedBox(
                            width: width / 5,
                            child: Text(
                              'Experience the wonders of the world, monuments, famous tourist spots etc.',
                              style: GoogleFonts.oxygen(
                                  color: Colors.white, fontSize: width * 0.010),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height / 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: height / 1.55,
                  child: Container(
                    // height: height / 1.5,
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Color(0xff090823),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width / 75, top: height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/image6.png',
                            width: width / 4.5,
                          ),
                          SizedBox(
                            height: height / 35,
                          ),
                          Text(
                            'Privacy & Security',
                            style: GoogleFonts.oxygen(
                                color: Colors.white, fontSize: width * 0.015),
                          ),
                          SizedBox(
                            height: height * 0.012,
                          ),
                          SizedBox(
                            width: width / 4.267,
                            child: Text(
                              'Robust privacy measure to protect and ensure a safe and enjoyable experience free from malicious activity.',
                              style: GoogleFonts.oxygen(
                                  color: Colors.white, fontSize: width * 0.010),
                            ),
                          ),

                          
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width / 38,
                ),
                SizedBox(
                  height: height / 1.55,
                  child: Container(
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Color(0xff090823),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width / 75, top: height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Image.asset(
                            'assets/images/image7.png',
                            width: width / 4.5,
                          ),
                          SizedBox(
                            height: height / 35,
                          ),
                          Text(
                            'Scalability & Inter Operability',
                            style: GoogleFonts.oxygen(
                                color: Colors.white, fontSize: width * 0.015),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          SizedBox(
                            width: width / 3.9,
                            child: Text(
                              'Designed to accommodate a large number of users simultaneously and potentially interoperable with other virtual environments or platforms, allowing for seamless integration and collaboration across different digital spaces.',
                              style: GoogleFonts.oxygen(
                                  color: Colors.white, fontSize: width * 0.010),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width / 38,
                ),
                SizedBox(
                  height: height / 1.55,
                  child: Container(
                    width: width / 4,
                    decoration: BoxDecoration(
                        color: Color(0xff090823),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width / 75, top: height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/image8.png',
                            width: width / 4.5,
                          ),
                          SizedBox(
                            height: height / 40,
                          ),
                          Text(
                            'In World Purchase',
                            style: GoogleFonts.oxygen(
                              color: Colors.white,
                              fontSize: width * 0.014,
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          SizedBox(
                            width: width / 4.5,
                            child: Text(
                              'In-world purchases can include buying virtual items like skins, costumes, as well as virtual currency to facilitate in-game transactions. These transactions often occur within dedicated marketplaces or shops integrated into the virtual environment.',
                              style: GoogleFonts.oxygen(
                                  color: Colors.white, fontSize: width * 0.010),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: height / 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Our Latest',
                      style: GoogleFonts.montaga(
                        color: Colors.white,
                        fontSize: width * 0.024,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect rect) {
                        return _gradient2.createShader(rect);
                      },
                      child: Text(
                        ' Works',
                        style: GoogleFonts.montaga(
                          color: Colors.white,
                          fontSize: width * 0.024,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height / 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(left: width / 10),
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
                                child: Stack(
                                  children: [
                                    Container(
                                      width: width / 1.3,
                                      decoration: BoxDecoration(
                                        border: Border.fromBorderSide(
                                          BorderSide(
                                            width: 3,
                                          ),
                                        ),
                                        borderRadius: BorderRadius.circular(45),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xffF86CF8),
                                            Color(0xff64CEF5)
                                          ],
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(width / 320),
                                        child: AspectRatio(
                                          aspectRatio: 16 / 9,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(35)),
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
                                            !_videoController1.value.isPlaying,
                                        child: FloatingActionButton(
                                          backgroundColor: Colors.transparent,
                                          onPressed: () {
                                            _playPauseVideo1();
                                            setState(() {
                                              _videoController1.play();
                                            });
                                          },
                                          child: Icon(
                                            _videoController1.value.isPlaying
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
                                          backgroundColor: Colors.transparent,
                                          onPressed: () {
                                            _playPauseVideo1();
                                            setState(() {
                                              _videoController1.value.isPlaying
                                                  ? _videoController1.pause()
                                                  : _videoController1.play();
                                            });
                                          },
                                          child: Icon(
                                            _videoController1.value.isPlaying
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
                                      width: MediaQuery.of(context).size.width /
                                          1.3,
                                      decoration: BoxDecoration(
                                        // BorderRadius.circular(15),
                                        border: Border.fromBorderSide(
                                          BorderSide(
                                            width: 3,
                                          ),
                                        ),
                                        borderRadius: BorderRadius.circular(45),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xffF86CF8),
                                              Color(0xff64CEF5)
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(45),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(width / 320),
                                          child: AspectRatio(
                                            aspectRatio: 16 / 9,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(35),
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
                                            !_videoController2.value.isPlaying,
                                        child: FloatingActionButton(
                                          backgroundColor: Colors.transparent,
                                          onPressed: () {
                                            _playPauseVideo2();
                                            setState(() {
                                              _videoController2.play();
                                            });
                                          },
                                          child: Icon(
                                            _videoController2.value.isPlaying
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
                                          backgroundColor: Colors.transparent,
                                          onPressed: () {
                                            _playPauseVideo2();
                                            setState(() {
                                              _videoController2.value.isPlaying
                                                  ? _videoController2.pause()
                                                  : _videoController2.play();
                                            });
                                          },
                                          child: Icon(
                                            _videoController2.value.isPlaying
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
                      ],
                    ),
                  ),
                )
              ],
            ),

            SizedBox(
              height: height / 5,
            ),

            FooterSection()
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


