import 'package:get/get.dart';
import 'package:lifespak_task/presentation/login_screen/controller/login_screen_controller.dart';

class LoginScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=> LoginScreenController());
  }
  
}