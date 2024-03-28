// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';

class RoundAnimation extends StatefulWidget {
  const RoundAnimation({Key? key}) : super(key: key);

  @override
  _RoundAnimationState createState() => _RoundAnimationState();
}

class _RoundAnimationState extends State<RoundAnimation> {
  Offset _position = const Offset(500, 300);
  double _imageWidth = 0.0;
  double _imageHeight = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Get the size of the image after the layout is complete
      getImageSize(context);
    });
  }

  void getImageSize(BuildContext context) {
    final RenderBox box = context.findRenderObject()! as RenderBox;
    setState(() {
      _imageWidth = box.size.width;
      _imageHeight = box.size.height;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            _position += details.delta;
            // Limiting pointer movement within the bounds of the image
            _position = Offset(
              _position.dx.clamp(0, _imageWidth),
              _position.dy.clamp(0, _imageHeight),
            );
          });
        },
        child: Stack(
          children: [
            // Background black layout
            Container(
              color: Colors.black,
              width: double.infinity,
              height: double.infinity,
            ),

            // Actual image with ClipPath
            Center(
              child: ClipPath(
                clipper: CircleClipper(
                  center: _position,
                  radius: MediaQuery.sizeOf(context).width / 6.5,
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/round_bg.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Positioned(
                      left:
                          _position.dx - MediaQuery.sizeOf(context).width / 6.4,
                      top: _position.dy -
                          MediaQuery.sizeOf(context).height / 2.5,
                      child: Stack(
                        children: [
                          SizedBox(
                              width: MediaQuery.sizeOf(context).width / 3.1,
                              height: MediaQuery.sizeOf(context).height / 1.22,
                              child: Container(
                                color: Colors.transparent,
                                child: Image.asset(
                                  'assets/images/shadow.png',
                                ),
                              )),
                          Positioned(
                            top: MediaQuery.sizeOf(context).height / 10,
                            left: MediaQuery.sizeOf(context).height / 25,
                            child: CircularText(
                              radius: MediaQuery.sizeOf(context).width / 7,
                              children: [
                                TextItem(
                                  text: Text(
                                    'FIND',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.sizeOf(context).width *
                                              0.018,
                                      color: const Color.fromARGB(
                                          255, 244, 36, 202),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  space: 12,
                                  startAngle: 240,
                                  startAngleAlignment:
                                      StartAngleAlignment.center,
                                  direction: CircularTextDirection.clockwise,
                                ),
                                TextItem(
                                  text: Text(
                                    'THE BUTTON TO ENTER SITE',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.sizeOf(context).width *
                                              0.018,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  space: 12,
                                  startAngle: 60,
                                  startAngleAlignment:
                                      StartAngleAlignment.center,
                                  direction: CircularTextDirection.clockwise,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      right: MediaQuery.sizeOf(context).width / 4.1,
                      top: MediaQuery.sizeOf(context).height / 2.15,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              final beamerKey = Beamer.of(context);
                              beamerKey.beamToNamed('/home');
                            });
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width / 5.5,
                            height: MediaQuery.sizeOf(context).height / 15,
                            child: const Text(
                              "Go to Landing Screen",
                              style: TextStyle(color: Colors.transparent),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleClipper extends CustomClipper<Path> {
  final Offset center;
  final double radius;

  CircleClipper({required this.center, required this.radius});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.addOval(Rect.fromCircle(center: center, radius: radius));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
