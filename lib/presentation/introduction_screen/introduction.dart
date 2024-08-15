import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lifespak_task/core/commons/widgets/common_text_style.dart';
import 'package:lifespak_task/core/constants/colors_constant.dart';
import 'package:lifespak_task/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  fit: BoxFit.cover,
                  'assets/img.png',
                ),
              ),
            ),
            const SizedBox(height: 50),
            CommonText(
                text: "You Health",
                color: primaryColor,
                fontSize: 35,
                fontWeight: FontWeight.bold),
            CommonText(
                text: "Our Priority",
                color: primaryColor,
                fontSize: 45,
                fontWeight: FontWeight.bold),
            CommonText(
                text:
                    "Track your wellness, manage your health, and connect with care.',",
                color: primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w400),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // stored email in local db
                    SharedPreferences.getInstance().then((val) {
                      var isLogin = val.getBool("isLogin");
                      if (isLogin == true) {
                        Get.toNamed(AppRoutes.homeScreen);
                      } else {
                        Get.toNamed(AppRoutes.loginScreen);
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                          text: "Get Started",
                          color: whiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      const Icon(
                        color: Colors.white,
                        CupertinoIcons.arrow_right_circle_fill,
                        size: 45,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
