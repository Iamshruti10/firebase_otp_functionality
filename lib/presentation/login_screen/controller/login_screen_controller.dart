import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lifespak_task/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreenController extends GetxController {
  final emailController = TextEditingController().obs;
  final mobilenoController = TextEditingController().obs;
  var emailFocus = false.obs;
  var mobileFocus = false.obs;
  RxBool loading = false.obs;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void getOTP({required String phoneNumber, required String emailId}) async {
  await _auth.verifyPhoneNumber(
    phoneNumber: "+91$phoneNumber",
    verificationCompleted: (PhoneAuthCredential credential) async {
      // Automatically handles the verification and signs in the user.
      await _auth.signInWithCredential(credential);
      
      // Store login status and email in local storage
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool("isLogin", true);
      await prefs.setString("emailId", emailId);
    },
    verificationFailed: (FirebaseAuthException e) {
      if (e.code == 'invalid-phone-number') {
        Get.snackbar("Error", "Please enter a valid mobile number");
      } else {
        Get.snackbar("Error", e.message ?? "Something went wrong");
      }
    },
    codeSent: (String verificationId, int? resendToken) {
      // Navigate to the OTP screen
      Get.toNamed(AppRoutes.otpScreen, arguments: verificationId);
    },
    codeAutoRetrievalTimeout: (String verificationId) {
      // Handle timeout if necessary
    },
  );
}

}
