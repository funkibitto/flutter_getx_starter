import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_car_controller.dart';

class MyCarView extends GetView<MyCarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text('MyCarView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MyCarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
