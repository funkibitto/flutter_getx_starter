import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_getx_starter/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEdgeDragWidth: 20,
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
      drawer: Drawer(
        child: Container(
          child: Center(
            child: Text("Left menu"),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('@Home'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Get.toNamed('/login');
            },
          ),
          IconButton(
            icon: Icon(Icons.access_alarm_sharp),
            onPressed: () {
              Get.toNamed('/login');
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Get.toNamed('/setting');
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
