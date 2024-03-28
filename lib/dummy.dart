import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(onScrollToBottom: () {
          // Call the function to scroll to the bottom
          ScrollableContent.scrollToBottom();
        }),
        body: ScrollableContent(),
      ),
    );
  }
}
//class

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onScrollToBottom;

  const MyAppBar({Key? key, required this.onScrollToBottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Scroll to Bottom Example'),
      actions: [
        IconButton(
          icon: const Icon(Icons.arrow_downward),
          onPressed: onScrollToBottom,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class ScrollableContent extends StatelessWidget {
  static ScrollController _scrollController = ScrollController();

  static void scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: <Widget>[
          // Your content here
          Container(
            height: 2000, // Example content height
            color: Colors.blueGrey,
            child: const Center(
              child: Text('Scrollable Content'),
            ),
          ),

          Container(
            height: 200,
            color: Colors.red,
            child: const Text("Bottom"),
          )
        ],
      ),
    );
  }
}
