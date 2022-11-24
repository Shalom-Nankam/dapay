import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.color,
      required this.size,
      required this.weight,
      this.align});

  final String text;
  final Color color;
  final double size;
  final FontWeight weight;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: size.sp,
        fontWeight: weight,
        color: color,
      ),
      textAlign: align,
    );
  }
}
