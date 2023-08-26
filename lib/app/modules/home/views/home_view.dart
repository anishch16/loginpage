import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../login_screen/views/login_screen_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.toNamed(Routes.LOGIN_SCREEN);
          },
          style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 18), // Text color
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            'Go to Log In Page',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
