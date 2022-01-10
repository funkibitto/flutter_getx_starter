import 'package:flutter/material.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('ShoppingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ShoppingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
