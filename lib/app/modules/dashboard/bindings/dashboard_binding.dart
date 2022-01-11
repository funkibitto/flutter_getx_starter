import 'package:flutter_getx_starter/app/modules/shopping/controllers/shopping_controller.dart';
import 'package:flutter_getx_starter/app/modules/video/controllers/video_controller.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<ShoppingController>(() => ShoppingController());
    Get.lazyPut<VideoController>(() => VideoController());
  }
}
