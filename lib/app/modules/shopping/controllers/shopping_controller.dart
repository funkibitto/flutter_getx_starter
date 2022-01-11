import 'package:get/get.dart';

class ShoppingController extends GetxController {
  //TODO: Implement ShoppingController

  final count = 1000.obs;
  @override
  void onInit() {
    print("ShoppingController ===========================");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
