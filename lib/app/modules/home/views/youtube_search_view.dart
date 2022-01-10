import 'package:flutter/material.dart';

class YoutubeSearchView extends StatelessWidget {
  const YoutubeSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('YoutubeSearchView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'YoutubeSearchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
