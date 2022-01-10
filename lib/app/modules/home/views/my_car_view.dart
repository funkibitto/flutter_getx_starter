import 'package:flutter/material.dart';

class MyCarView extends StatelessWidget {
  const MyCarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('MyCarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyCarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
