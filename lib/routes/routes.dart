import 'package:get/get.dart';
import 'package:lifespak_task/presentation/home_screen/binding/homescreen_binding.dart';
import 'package:lifespak_task/presentation/home_screen/home_screen.dart';
import 'package:lifespak_task/presentation/introduction_screen/binding/introduction_screen_binding.dart';
import 'package:lifespak_task/presentation/introduction_screen/introduction.dart';
import 'package:lifespak_task/presentation/login_screen/binding/login_screen_binding.dart';
import 'package:lifespak_task/presentation/login_screen/login_screen.dart';
import 'package:lifespak_task/presentation/otpscreen/binding/otpbinding.dart';
import 'package:lifespak_task/presentation/otpscreen/otp_screen.dart';

class AppRoutes {
  static String loginScreen = "/login_screen";
  static String introductionScreen = "/introduction_screen";
  static String otpScreen = "/otp_screen";
  static String homeScreen = "/home_screen";
  static List<GetPage> pages = [
    GetPage(
        name: loginScreen,
        page:()=>  LoginScreen(),
        bindings: [LoginScreenBinding()]),

        GetPage(
        name: introductionScreen,
        page:()=> const IntroductionScreen(),
        bindings: [IntroductionScreenBinding()]),

         GetPage(
        name: otpScreen,
        page:()=> const OTPVerify(),
        bindings: [OTPScreenBinding()]),

        GetPage(
        name: homeScreen,
        page:()=> const HomeScreen(),
        bindings: [HomeScreenBinding()]),
  ];
}
