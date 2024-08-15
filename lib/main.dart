import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lifespak_task/firebase_options.dart';
import 'package:lifespak_task/presentation/home_screen/binding/homescreen_binding.dart';
import 'package:lifespak_task/presentation/introduction_screen/binding/introduction_screen_binding.dart';
import 'package:lifespak_task/presentation/otpscreen/binding/otpbinding.dart';
import 'package:lifespak_task/routes/routes.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: OTPScreenBinding(),
      initialRoute: AppRoutes.otpScreen,
      getPages: AppRoutes.pages,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
