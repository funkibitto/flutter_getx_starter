import 'package:flutter/material.dart';
import 'package:flutter_getx_starter/app/modules/auth/services/auth_service.dart';
import 'package:flutter_getx_starter/app/modules/home/controllers/youtube_controller.dart';
import 'package:get/get.dart';

class YoutubeView extends StatelessWidget {
  final controller = Get.put(YoutubeController());

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
        // child: Container(),
        child: Obx(
          () => Text(controller.youtubeList.value.items.toString()),
        ),
      ),
    );
  }
}
