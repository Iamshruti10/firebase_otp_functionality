import 'package:get/get.dart';
import 'package:lifespak_task/presentation/introduction_screen/controller/introduction_controller.dart';

class IntroductionScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>IntroductionController());
      }
  
}