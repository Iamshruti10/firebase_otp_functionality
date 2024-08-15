import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const CommonText({
    super.key,
    required this.text,
    this.textAlign = TextAlign.center,
    this.fontSize = 18.0,
    this.color = Colors.black,
    this.fontWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
