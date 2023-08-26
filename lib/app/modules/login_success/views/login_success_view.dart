import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_success_controller.dart';

class LoginSuccessView extends GetView<LoginSuccessController> {
  const LoginSuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: const Text('LoginSuccessView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Bravo Anish!!!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
