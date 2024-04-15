import 'package:flutter/material.dart';

class Dummy extends StatefulWidget {
  const Dummy({super.key});

  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            _scrollToYellowContainer();
            print("object");
          },
          child: const Text('Contact'),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: <Widget>[
            Container(
              height: 200, // Example height
              color: Colors.red,
              child: const Center(child: Text('Section 1')),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 200, // Example height
                color: Colors.blue,
                child: const Center(child: Text('Section 2')),
              ),
            ),
            Container(
              height: 200, // Example height
              color: Colors.green,
              child: const Center(child: Text('Section 3')),
            ),
            Container(
              height: 200, // Example height
              color: Colors.yellow,
              child: const Center(child: Text('Section 4')),
            ),
          ],
        ),
      ),
    );
  }

  void _scrollToYellowContainer() {
    final double offset = _scrollController.position.maxScrollExtent;
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
