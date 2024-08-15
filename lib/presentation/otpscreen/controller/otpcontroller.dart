

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lifespak_task/routes/routes.dart';

class OTPScreenController extends GetxController {
  var otpController = TextEditingController();
  var arguments = "".obs;
  @override
  void onReady() {
    
    arguments.value = Get.arguments;
    log("Hii-${arguments.value}");
    update();
    super.onReady();
  }

   verifyOTP({verificationId, smsCode}) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    // Create a PhoneAuthCredential with the verificationId and smsCode
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);

    try {
      // Sign in with the credential
      UserCredential userCredential =
          await auth.signInWithCredential(credential);
          Get.offAllNamed(AppRoutes.homeScreen);
      print("Successfully signed in UID: ${userCredential.user?.uid}");
    } on FirebaseAuthException catch (e) {
      // Handle error cases
      print("Failed to sign in: ${e.message}");
    }
  }

 
}
