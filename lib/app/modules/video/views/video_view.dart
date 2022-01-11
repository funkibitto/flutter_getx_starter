import 'package:flutter/material.dart';
import 'package:flutter_getx_starter/app/modules/auth/services/auth_service.dart';
import 'package:flutter_getx_starter/app/modules/video/controllers/video_controller.dart';
import 'package:get/get.dart';

class VideoView extends StatelessWidget {
  final controller = Get.put(VideoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
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
          if (AuthService.to.isLoggedIn == true) ...[
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Get.toNamed('/setting');
              },
            )
          ],
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(controller.videoList.value.items.toString()),
        ),
      ),
    );
  }
}
