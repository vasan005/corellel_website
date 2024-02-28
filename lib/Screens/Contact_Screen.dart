import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Text(
          'Contact',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
}
