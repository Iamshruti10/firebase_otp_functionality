import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lifespak_task/core/commons/widgets/common_btn.dart';
import 'package:lifespak_task/core/commons/widgets/common_text_style.dart';
import 'package:lifespak_task/core/constants/colors_constant.dart';
import 'package:lifespak_task/presentation/otpscreen/controller/otpcontroller.dart';
import 'package:pinput/pinput.dart';

class OTPVerify extends StatelessWidget {
  const OTPVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OTPScreenController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Flex(
          direction: Axis.vertical,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: /*  Text(
                  "Enter Verification Code",
                  style: TextStyle(
                      fontSize: 25,
                      color: primaryColor,
                      fontWeight: FontWeight.bold),
                ), */
                      CommonText(
                          text: "Enter Verification Code",
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
            ),
            Pinput(
              length: 6,
              controller: controller.otpController,
              enabled: true,

              focusedPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: TextStyle(
                  fontSize: 22,
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: secondaryColor),
                ),
              ),
              // Style for submitted fields
              submittedPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: TextStyle(
                  fontSize: 22,
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.0, 1.0),
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: whiteColor,
                ),
              ),
              // Adding a cursor
              showCursor: true,
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 24,
                    width: 2,
                    color: primaryColor,
                  ),
                ],
              ),
              onChanged: (value) {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 25),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    child: CommonText(
                      text: "Resend OTP",
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                    onTap: () {},
                  )),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Align(
                    alignment: Alignment.center,
                    child: CommonButton(
                        text: "Verify",
                        onPressed: () => controller.verifyOTP(
                              verificationId: controller.arguments.value,
                              smsCode: controller.otpController.text,
                            )))),
          ],
        ),
      );
    });
  }
}
