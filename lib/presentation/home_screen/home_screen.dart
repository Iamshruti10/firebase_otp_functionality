import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:lifespak_task/core/commons/widgets/background_screen.dart';
import 'package:lifespak_task/core/commons/widgets/common_btn.dart';
import 'package:lifespak_task/core/commons/widgets/common_text_style.dart';
import 'package:lifespak_task/core/constants/colors_constant.dart';
import 'package:lifespak_task/presentation/home_screen/controller/homescreen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor.withOpacity(0.9),
            title: const CommonText(
              text: "Home",
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          body: Stack(
            children: [
              const BackgroundScreen(),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          fit: BoxFit.contain,
                          'assets/person.png',
                          height: 80,
                          width: 80,
                        ),
                      ),
                      const CommonText(
                        text: "Shruti@gmail.com",
                        fontSize: 20,
                      ),
                      const SizedBox(height: 30),
                      CommonButton(
                        text: "Log Out",
                        textColor: whiteColor,
                        onPressed: () {
                          controller.logout();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
