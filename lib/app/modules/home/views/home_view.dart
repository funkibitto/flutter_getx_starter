import 'package:flutter/material.dart';
import 'package:flutter_getx_starter/app/core/global_constants.dart';
import 'package:flutter_getx_starter/app/modules/my_car/views/my_car_view.dart';
import 'package:flutter_getx_starter/app/modules/shopping/views/shopping_view.dart';
import 'package:flutter_getx_starter/app/modules/video/views/video_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _activeTab = 0;

  _changeActiveTab(value) {
    setState(() {
      _activeTab = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _getBody(),
      bottomNavigationBar: _getFooter(),
    );
  }

  Widget _getBody() {
    return IndexedStack(
      index: _activeTab,
      children: [VideoView(), ShoppingView(), MyCarView()],
    );
  }

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
              onTap: () => _changeActiveTab(index),
              child: Container(
                width: 80.0,
                child: Column(
                  children: [
                    Icon(
                      _navigationItems[index]['icon'],
                      color: _activeTab == index
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
                          color: _activeTab == index
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
    );
  }
}
