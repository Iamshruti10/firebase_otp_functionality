import 'package:get/get.dart';
import 'package:lifespak_task/presentation/home_screen/controller/homescreen_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=> HomeScreenController());
  }
  
}