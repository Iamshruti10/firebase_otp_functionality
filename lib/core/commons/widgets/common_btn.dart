import 'package:flutter/material.dart';
import 'package:lifespak_task/core/commons/widgets/common_text_style.dart';
import 'package:lifespak_task/core/constants/colors_constant.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final Color textColor;
  final double width;
  final double height;
  final FontWeight fontWeight;

  const CommonButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
    this.width = 140,
    this.height = 60,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            fixedSize: Size(width, height),
          ),
          onPressed: onPressed,
          child: CommonText(
            text: text,
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
