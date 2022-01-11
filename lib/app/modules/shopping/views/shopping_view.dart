import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shopping_controller.dart';

// class ShoppingView extends StatefulWidget {
//   const ShoppingView({Key? key}) : super(key: key);

//   @override
//   _ShoppingViewState createState() => _ShoppingViewState();
// }

// class _ShoppingViewState extends State<ShoppingView>
//     with AutomaticKeepAliveClientMixin<ShoppingView> {
//   @override
//   Widget build(BuildContext context) {
//     /// Dont't forget this
//     super.build(context);

//     print('===================ShoppingView*****************');
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text('ShoppingView'),
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: List<Widget>.generate(
//           100,
//           (index) => Container(
//               color: Color(Random().nextInt(0xffffffff)),
//               padding: const EdgeInsets.all(40),
//               margin: const EdgeInsets.all(8),
//               child: Text(
//                 index.toString(),
//                 style: TextStyle(fontSize: 40),
//                 textAlign: TextAlign.center,
//               )),
//         ),
//       ),
//     );
//   }

//   @override
//   // TODO: implement wantKeepAlive
//   bool get wantKeepAlive => true;
// }

class ShoppingView extends GetView<ShoppingController> {
  ShoppingView({Key? key}) : super(key: key);

  // final controller = Get.put(ShoppingController());
  // final controller =
  //     Get.lazyPut<ShoppingController>(() => ShoppingController());

  @override
  Widget build(BuildContext context) {
    print('===================ShoppingView*****************');
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Obx(
          () => Text('ShoppingView ${controller.count.toString()}'),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: List<Widget>.generate(
          100,
          (index) => Container(
              color: Color(Random().nextInt(0xffffffff)),
              padding: const EdgeInsets.all(40),
              margin: const EdgeInsets.all(8),
              child: Text(
                index.toString(),
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              )),
        ),
      ),
    );
  }
}
