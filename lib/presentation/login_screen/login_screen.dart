import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lifespak_task/core/commons/widgets/common_btn.dart';
import 'package:lifespak_task/core/commons/widgets/common_text_style.dart';
import 'package:lifespak_task/core/constants/colors_constant.dart';
import 'package:lifespak_task/presentation/login_screen/controller/login_screen_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  bool isOtpfield = false;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginScreenController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Flex(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                direction: Axis.vertical,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                            text: "Welcome Back!!",
                            color: textColor,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                        CommonText(
                            text: "Verify your number... ",
                            color: textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                        const SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Obx(() {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                boxShadow: controller.emailFocus.value
                                    ? const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(3.0, 2.0),
                                          blurRadius: 8.0,
                                          spreadRadius: 2.0,
                                        ),
                                      ]
                                    : [
                                        const BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 2.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ],
                              ),
                              child: Focus(
                                onFocusChange: (hasFocus) {
                                  controller.emailFocus.value = hasFocus;
                                },
                                child: TextField(
                                  controller: controller.emailController.value,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      prefixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.email_outlined,
                                          color: primaryColor,
                                        ),
                                      ),
                                      hintText: "Email",
                                      hintStyle:
                                          const TextStyle(color: Colors.grey),
                                      border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            );
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Obx(() {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                boxShadow: controller.mobileFocus.value
                                    ? const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(3.0, 2.0),
                                          blurRadius: 8.0,
                                          spreadRadius: 2.0,
                                        ),
                                      ]
                                    : [
                                        const BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 2.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ],
                              ),
                              child: Focus(
                                onFocusChange: (hasFocus) {
                                  controller.mobileFocus.value = hasFocus;
                                },
                                child: TextField(
                                  controller:
                                      controller.mobilenoController.value,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      prefixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.phone,
                                          color: primaryColor,
                                        ),
                                      ),
                                      hintText: "Mobile No",
                                      hintStyle:
                                          const TextStyle(color: Colors.grey),
                                      border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            );
                          }),
                        ),
                        const SizedBox(height: 20),
                        Obx(
                          () => controller.loading.value
                              ? const LinearProgressIndicator()
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: CommonButton(
                                          text: "Get OTP",
                                          onPressed: () => controller.getOTP(
                                              phoneNumber: controller
                                                  .mobilenoController
                                                  .value
                                                  .text,
                                              emailId: controller
                                                  .emailController
                                                  .value
                                                  .text)))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 130,
                width: 120,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(60)),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Container(
                height: 130,
                width: 120,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(55)),
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 40,
              child: Container(
                height: 130,
                width: 120,
                decoration: BoxDecoration(
                  color: optionColor,
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
