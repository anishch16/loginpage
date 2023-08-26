// bindings/login_screen_bindings.dart
import 'package:get/get.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginScreenController()); // Initialize the controller
  }
}
