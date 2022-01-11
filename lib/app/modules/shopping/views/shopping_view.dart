import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shopping_controller.dart';

class ShoppingView extends StatelessWidget {
  final controller =
      Get.lazyPut<ShoppingController>(() => ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('ShoppingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ShoppingView is working!!!!!!!!!!!!!!!!!!!!!!!!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
