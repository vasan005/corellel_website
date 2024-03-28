// ignore_for_file: library_private_types_in_public_api, file_names
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Offset _position = const Offset(0, 0);
  double _imageWidth = 0.0;
  double _imageHeight = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
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
            // Actual image
            Center(
              child: ClipPath(
                clipper: CircleClipper(
                  center: _position,
                  radius: 100.0,
                ),
                child: Image.asset(
                  'assets/x1.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            // Circle pointer
            Positioned(
              left: _position.dx - 100,
              top: _position.dy - 100,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent, // Make circle transparent
                  border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 4),
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
