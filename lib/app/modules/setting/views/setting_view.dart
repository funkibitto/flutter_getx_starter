import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    controller.conStart();
    return Scaffold(
      appBar: AppBar(
        title: Text('계정'),
        centerTitle: false,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
