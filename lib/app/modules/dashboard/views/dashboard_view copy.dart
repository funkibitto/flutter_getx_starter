import 'package:flutter/material.dart';
import 'package:flutter_getx_starter/app/core/global_constants.dart';
import 'package:flutter_getx_starter/app/modules/shopping/views/shopping_view.dart';
import 'package:flutter_getx_starter/app/modules/video/views/video_view.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              ShoppingView(key: UniqueKey()),
              VideoView(),
              ShoppingView(key: UniqueKey()),
            ],
          )),
      bottomNavigationBar: _getFooter(),
    );
  }

  List<Widget> _screens = <Widget>[
    ShoppingView(key: UniqueKey()),
    ShoppingView(key: UniqueKey()),
    ShoppingView(key: UniqueKey()),
  ];

  Widget _getFooter() {
    const _navigationItems = GlobalConstants.navigationItems;

    return Container(
      height: 80,
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            _navigationItems.length,
            (index) => GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => controller.changeTabIndex(index),
              child: Container(
                width: 80.0,
                child: Obx(
                  () => Column(
                    children: [
                      Icon(
                        _navigationItems[index]['icon'],
                        color: controller.tabIndex == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        _navigationItems[index]['text'],
                        style: TextStyle(
                            fontSize: 10,
                            color: controller.tabIndex == index
                                ? Colors.white
                                : Colors.white.withOpacity(0.5)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
