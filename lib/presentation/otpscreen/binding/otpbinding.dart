import 'package:get/get.dart';
import 'package:lifespak_task/presentation/otpscreen/controller/otpcontroller.dart';

class OTPScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=> OTPScreenController());
  }
  
}